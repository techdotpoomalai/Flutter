import 'package:flutter/material.dart';

import 'Health_of_Concept.dart';
import 'FeatureBar.dart';
import 'SpeedPower.dart';
import 'MapScreen.dart';
import 'SpeedMeter.dart';
import 'speedLimit.dart';
import 'CurcularChart.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page', //three positioned used
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          //full body
          width: 1024.0,
          height: 600.0,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          child: Stack(children: <Widget>[
            Container(
              child: Health_of_Concept(),
            ),
            Positioned(
              left: 50,
              child: Container(
                width: 7,
                height: 720,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(65, 65, 65, 1),
                ),
              ),
            ),
            Positioned(
              left: 58,
              child: Container(
                child: Column(children: <Widget>[
                  Container(
                    width: 211,
                    height: 220,
                    color: Color.fromRGBO(255, 19, 239, 1),
                    child: SpeedLimit(),
                  ),
                  Container(
                    width: 211,
                    height: 320,
                    // color: Color.fromRGBO(26, 162, 114, 1),
                  ),
                ]),
              ),
            ),
            Positioned(
              left: 270,
              child: Container(
                width: 7,
                height: 720,
                decoration: BoxDecoration(color: Color.fromRGBO(65, 65, 65, 1)),
              ),
            ),
            Positioned(
              left: 300,
              child: Container(
                width: 720.0,
                height: 540.0,
                decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 40,
                      color: Colors.cyanAccent,
                      child: FeatureBar(),
                    ),
                    Container(
                      height: 5,
                      // margin: EdgeInsets.only(top: 15.0, bottom: 10.0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(65, 65, 65, 1),
                      ),
                    ),
                    Container(
                      height: 350,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(1.0),
                      ),
                      child: MapScreen(),
                    ),
                    Container(
                      height: 120,
                      child: SpeedPower(),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
