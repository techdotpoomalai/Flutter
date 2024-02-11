import 'package:flutter/material.dart';
import 'SpeedGraph.dart';

class SpeedPower extends StatefulWidget {
  @override
  _SpeedPower createState() => _SpeedPower();
}

class _SpeedPower extends State<SpeedPower> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.15),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Fast 10 km',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Avg 45 W/km',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              )),
          Container(
            width: 500,
            height: 105,
            child: Center(
              child: SpeedGraph(),
            ),
          ),
        ],
      ),
    );
  }
}
