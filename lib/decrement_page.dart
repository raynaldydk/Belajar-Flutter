import 'dart:math';
import 'package:flutter/material.dart';

class DecrementPage extends StatefulWidget {
  @override
  _DecrementPageState createState() => _DecrementPageState();
}

class _DecrementPageState extends State<DecrementPage> {
  int number = 100;
  Color textColor = Colors.black;

  void updateColor() {
    textColor = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  void decrement() {
    setState(() {
      number--;
      updateColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Decrement Page")),
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
              onPressed: decrement,
              child: Icon(Icons.remove),
            )
          ],
        ),
      ),
    );
  }
}
