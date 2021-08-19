import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

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
  List<String> imageName = [
    'flower_01.png',
    'flower_02.png',
    'flower_03.png',
    'flower_04.png',
    'flower_05.png',
    'flower_06.png'
  ];
  int currentImage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text('Image Swiping'),
      ),
      body: Center(
        child: SimpleGestureDetector(
          onHorizontalSwipe: _onHorizontalSwipe,
          onVerticalSwipe: _onHorizontalSwipe,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(imageName[currentImage]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/${imageName[currentImage]}',
                  width: 350.0,
                  height: 600.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onHorizontalSwipe(SwipeDirection direction) {
    //왼쪽으로 땡기면 +1 , 오른쪽으로 땡기면 -1
    setState(() {
      if (direction == SwipeDirection.left) {
        print('Left');
        currentImage += 1;
        if (currentImage >= imageName.length) {
          currentImage = 0;
        }
      } else {
        print('Right');
        currentImage -= 1;
        if (currentImage < 0) {
          currentImage = imageName.length - 1;
        }
      }
    });
  }
}
