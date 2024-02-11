import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineTitles {
  static getTitlesData() => FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 20,
          getTextStyles: (value) => const TextStyle(),
          getTitles: (value) {
            switch (value.toInt()) {
              case 10:
                return '10';
              case 20:
                return '20';
              case 30:
                return '30';
              case 40:
                return '40';
              case 50:
                return '50';
              case 60:
                return '60';
            }
            return '';
          },
          margin: 5,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          // reservedSize: 20,
          getTextStyles: (value) => const TextStyle(
            // fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return '10';
              case 10:
                return '20';
              case 20:
                return '30';
              case 25:
                return '40';
            }
            return '';
          },
          margin: 5,
        ),
      );
}
