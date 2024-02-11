import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SpeedMeter extends StatefulWidget {
  SpeedMeter({Key? key}) : super(key: key);

  @override
  _SpeedMeter createState() => _SpeedMeter();
}

class _SpeedMeter extends State<SpeedMeter> {
  Widget _getRadialGauge() {
    return SfRadialGauge(
        title: GaugeTitle(
            text: 'Speedometer',
            textStyle:
                const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        axes: <RadialAxis>[
          RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
            GaugeRange(
                startValue: 0,
                endValue: 50,
                color: Colors.green,
                startWidth: 10,
                endWidth: 10),
            GaugeRange(
                startValue: 50,
                endValue: 100,
                color: Colors.orange,
                startWidth: 10,
                endWidth: 10),
            GaugeRange(
                startValue: 100,
                endValue: 150,
                color: Colors.red,
                startWidth: 10,
                endWidth: 10)
          ], pointers: <GaugePointer>[
            // NeedlePointer(value: 90)
          ], annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                widget: Container(
                    child: const Text('120',
                        style: TextStyle(
                            fontSize: 70,
                            fontWeight: FontWeight.w900,
                            color: Colors.white))),
                angle: 0,
                positionFactor: 0.0),
            GaugeAnnotation(
                widget: Container(
                    child: const Text('kmph',
                        style: TextStyle(
                            fontSize: 20,
                            // fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(56, 165, 168, 0.804)))),
                angle: 90,
                positionFactor: 0.3),
          ])
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _getRadialGauge());
  }
}
