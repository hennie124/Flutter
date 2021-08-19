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
  Color _color = Colors.blue;
  late Color _TempColor;

  var switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Changed Button color on Switch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                if (_color == Colors.blue) {
                  setState(() {
                    _color = Colors.red;
                  });
                } else {
                  setState(() {
                    _color = Colors.blue;
                  });
                }
              },
              child: Text('Flutter'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(_color),
              ),
            ),
            Switch(
              value: switchValue,
              onChanged: (value) {
                if (_color == Colors.blue) {
                  setState(() {
                    switchValue = value;
                    _color = Colors.red;
                    _TempColor = Colors.red;
                  });
                } else {
                  setState(() {
                    switchValue = value;
                    _color = Colors.blue;
                    _TempColor = Colors.blue;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
