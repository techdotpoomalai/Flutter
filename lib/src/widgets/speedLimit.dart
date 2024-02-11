import 'package:flutter/material.dart';
import 'package:tshellmotors/src/widgets/CurcularChart.dart';

class SpeedLimit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        // Just to align to the left
        children: <Widget>[
          Container(
            width: 40,
            alignment: Alignment.topRight,
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Column(
              children: <Widget>[
                Text(
                  'Speed\nLimit',
                  style: TextStyle(fontSize: 8, color: Colors.white),
                ),
                Text(
                  '25',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 122,
            width: 210,
            child: Container(
              color: Colors.black,
              child: CurcularChart(),
            ),
          ),
          Container(
            color: Colors.black,
            height: 40,
            width: 210,
            child: Column(
              children: <Widget>[
                Text(
                  'R \tN \tD',
                  style: TextStyle(
                      fontSize: 15, color: Colors.white.withOpacity(0.5)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
