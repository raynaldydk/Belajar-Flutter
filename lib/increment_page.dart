import 'dart:math';
import 'package:flutter/material.dart';

class IncrementPage extends StatefulWidget {
  @override
  _IncrementPageState createState() => _IncrementPageState();
}

class _IncrementPageState extends State<IncrementPage> {
  int number = 0;
  Color textColor = Colors.black;

  void updateColor() {
    textColor = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  void increment() {
    setState(() {
      number++;
      updateColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Increment Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$number",
              style: TextStyle(fontSize: 50, color: textColor),
            ),
            SizedBox(height: 20),
            FloatingActionButton(
              onPressed: increment,
              child: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
