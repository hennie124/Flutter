import 'package:flutter/material.dart';
import 'package:textfield_login_ex_app/Login.dart';
import 'package:textfield_login_ex_app/mainPage.dart';

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
          return Login();
        },
        '/1st': (context) {
          return MainPage(
            strUserID: Login.userId,
          );
        },
      },
    );
  }
}
