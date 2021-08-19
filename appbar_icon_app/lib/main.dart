import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar Icon'),
        leading: IconButton(
            onPressed: () {
              print("Menu button is clicked.");
            },
            icon: Icon(Icons.menu)),
        actions: [
          IconButton(
              onPressed: () {
                print("Email button as clicked.");
              },
              icon: Icon(Icons.email)),
          IconButton(
              onPressed: () {
                print("Add Alarm button as clicked.");
              },
              icon: Icon(Icons.add_alarm)),
          IconButton(
              onPressed: () {
                print("Add button as clicked.");
              },
              icon: Icon(Icons.add_outlined)),
          GestureDetector(
            onTap: () {
              print("Smile image is tapped.");
            },
            child: Image.asset(
              'images/image.png',
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
    );
  }
}
