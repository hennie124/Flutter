import 'package:flutter/material.dart';
import 'package:login_ex_list_app/AnimalMain.dart';
import 'package:login_ex_list_app/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) {
        return Login();
      },
      '/1st': (context) {
        return AnimalMain();
      }
    });
  }
}
