import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List _imageName = [
    'w1.jpg',
    'w2.jpg',
    'w3.jpg',
    'w4.jpg',
    'w5.jpg',
    'w6.jpg',
    'w7.jpg',
    'w8.jpg',
    'w9.jpg',
    'w10.jpg',
  ];

  // ignore: unused_field
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Picker View로 이미지 선택',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              child: CupertinoPicker(
                  backgroundColor: Colors.white,
                  itemExtent: 30,
                  scrollController: FixedExtentScrollController(initialItem: 0),
                  onSelectedItemChanged: (value) {
                    setState(() {
                      _selectedItem = value;
                    });
                  },
                  children: [
                    Text(_imageName[0]),
                    Text(_imageName[1]),
                    Text(_imageName[2]),
                    Text(_imageName[3]),
                    Text(_imageName[4]),
                    Text(_imageName[5]),
                    Text(_imageName[6]),
                    Text(_imageName[7]),
                    Text(_imageName[8]),
                    Text(_imageName[9]),
                  ]),
              width: 300,
              height: 250,
            ),
            Text(
              '${_imageName[_selectedItem]}',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              child: Image.asset(
                "images/${_imageName[_selectedItem]}",
                fit: BoxFit.contain,
                width: 300,
                height: 500,
              ),
              width: 300,
              height: 500,
            )
          ],
        ),
      )),
    );
  }
}
