import 'package:flutter/material.dart';

class FeatureBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feature icon here',
      home: Scaffold(
      backgroundColor: Colors.black,
       body:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            color: Colors.black,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.battery_alert_sharp, size: 50.0, color: Colors.white,),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text('67%',style: TextStyle(color: Colors.white,fontSize: 30),),
                ),
                Icon(Icons.map_rounded, size: 50.0, color: Colors.white,),
                Container(
                  margin:EdgeInsets.only(top: 5),
                  child:Text('498km',style: TextStyle(color: Colors.white,fontSize: 30),),
                ),
              ],
            ),

          ),

          Container(
            color: Colors.black,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.bluetooth, size: 50.0, color: Colors.white,),
                Icon(Icons.signal_cellular_alt, size: 50.0, color: Colors.white,),
                Icon(Icons.five_g_outlined, size: 50.0, color: Colors.white,),
                Icon(Icons.sunny, size: 50.0, color: Colors.white,),
                Container(
                  margin:EdgeInsets.only(top: 5),
                  child:Text('13:15',style: TextStyle(color: Colors.white,fontSize: 30),),
                ),
              ],
            ),
          ),

        ],
      ),
      ),
    );
  }
}