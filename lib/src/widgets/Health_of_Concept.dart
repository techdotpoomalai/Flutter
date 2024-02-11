import 'package:flutter/material.dart';

class Health_of_Concept extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health of Concept', //three positioned used
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.warning, size: 40.0, color: Colors.white54,),
                Icon(
                  Icons.charging_station, size: 40.0, color: Colors.white54,),
                Icon(
                  Icons.warning, size: 40.0, color: Colors.white54,),
                Icon(
                  Icons.warning, size: 40.0, color: Colors.white54,),
              ],
            ),

            Icon(Icons.bar_chart, size: 40.0, color: Colors.white54,),

            ],
          ),
        ),
    );
  }
}