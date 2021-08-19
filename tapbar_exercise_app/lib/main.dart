import 'package:flutter/material.dart';
import 'package:tapbar_exercise_app/firstPage.dart';
import 'package:tapbar_exercise_app/secondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar Test'),
      ),
      body: TabBarView(
        children: [FirstPage(), SecondPage()],
        controller: controller,
      ),
      bottomNavigationBar: TabBar(
        labelColor: Colors.blueAccent,
        tabs: [
          Tab(
            icon: Icon(
              Icons.alarm,
              color: Colors.blue,
            ),
            text: 'Pickachu Scene #1',
          ),
          Tab(
            icon: Icon(
              Icons.person,
              color: Colors.red,
            ),
            text: 'Pickachu Scene #2',
          ),
        ],
        controller: controller,
      ),
    );
  }
}
