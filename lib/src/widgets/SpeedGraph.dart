import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../Feature/GraphLineTitles.dart';

class SpeedGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 0,
        maxX: 50,
        minY: 0,
        maxY: 20,
        titlesData: LineTitles.getTitlesData(),
        gridData: FlGridData(
          show: true,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: Color.fromARGB(255, 0, 255, 242).withOpacity(0.2),
              strokeWidth: 1,
            );
          },
          getDrawingVerticalLine: (value) {
            return FlLine(
              color: const Color(0xff37434d),
              strokeWidth: 1,
            );
          },
          drawVerticalLine: true,
        ),
        borderData: FlBorderData(
          show: false,
          border: Border.all(color: Color.fromARGB(255, 2, 134, 242), width: 1),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 3),
              FlSpot(10, 7),
              FlSpot(12, 10),
              FlSpot(19, 12),
              FlSpot(30, 15),
              FlSpot(35, 17),
            ],
            isCurved: true,
            colors: [Color(0xff23b6e6), Color(0xff02d39a)],
            barWidth: 4,
            dotData: FlDotData(show: false),
            belowBarData: BarAreaData(
              show: true,
              colors: [Color(0xff23b6e6), Color(0xff02d39a)]
                  .map((e) => e.withOpacity(0.4))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
