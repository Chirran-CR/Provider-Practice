import "dart:async";

import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    // Timer(const Duration(seconds: 1), () {
    //   print("hello timer");
    // });
    Timer.periodic(const Duration(seconds: 1), (timer) {
      print("val of timer is: $timer and timer.tick is: ${timer.tick} and timer.toString() is: ${timer.toString()}");
      setState(() {
        
      });
      count++;
      print("Val of count is: $count");
      if (timer.tick == 6) {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Using Stateful Concept"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Text(
          count.toString(),
          style: const TextStyle(
            fontSize: 90,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
