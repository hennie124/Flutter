import 'package:flutter/material.dart';
import 'package:navigator_appbar_ex_app/message.dart';
import 'package:navigator_appbar_ex_app/message1st.dart';
import 'package:navigator_appbar_ex_app/message2nd.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) {
          return Message();
        },
        '/1st': (context) {
          return Message1st();
        },
        '/2nd': (context) {
          return Message2nd();
        }
      },
    );
  }
}
