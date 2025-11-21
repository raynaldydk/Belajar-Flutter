import 'package:flutter/material.dart';
import '/home_page.dart';
import '/increment_page.dart';
import '/decrement_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Named Route Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/increment': (context) => IncrementPage(),
        '/decrement': (context) => DecrementPage(),
      },
    );
  }
}
