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

class _MyHomePageState extends State<MyHomePage> {
  String buttonText = "Hello";
  Color _color = Colors.blue;

  //optional 값 가능 but 정확하게 명시해줘야 함
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change button color & text"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                if (_color == Colors.blue) {
                  setState(() {
                    buttonText = "Flutter";
                    _color = Colors.amber;
                  });
                } else {
                  setState(() {
                    buttonText = "Hello";
                    _color = Colors.blue;
                  });
                }
              },
              child: Text('$buttonText'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(_color)),
            ),
          ],
        ),
      ),
    );
  }
}
