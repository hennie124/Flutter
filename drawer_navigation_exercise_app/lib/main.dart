import 'package:drawer_navigation_exercise_app/Message.dart';
import 'package:drawer_navigation_exercise_app/ReceiveMessage.dart';
import 'package:drawer_navigation_exercise_app/SendMessage.dart';
import 'package:flutter/material.dart';

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
          return Message();
        },
        '/1st': (context) {
          return SendMessage();
        },
        '/2nd': (context) {
          return ReceiveMessage();
        },
      },
    );
  }
}
