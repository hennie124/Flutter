import 'package:flutter/material.dart';
import 'package:pop_widget_context_app/Gesture.dart';
import 'package:pop_widget_context_app/Second%20Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) {
          return Gesture();
        },
        '/2nd': (context) {
          return SecondPage();
        },
      },
    );
  }
}
