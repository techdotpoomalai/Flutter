import 'package:flutter/material.dart';
import 'dart:async';
// import 'package:intl/intl.dart';

class LiveTimeApp extends StatefulWidget {
  @override
  _LiveTimeAppState createState() => _LiveTimeAppState();
}

class _LiveTimeAppState extends State<LiveTimeApp> {
  late String currentTime;

  @override
  void initState() {
    super.initState();
    // Initialize the time
    updateTime();
    // Set up a timer to update the time every second
    Timer.periodic(Duration(seconds: 1), (Timer timer) => updateTime());
  }

  void updateTime() {
    DateTime now = DateTime.now();
    // String formattedTime = DateFormat('HH:mm:ss').format(now);
    setState(() {
      // currentTime = formattedTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live Time App'),
      ),
      body: Center(
        child: Text(
          'Current Time: $currentTime',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
