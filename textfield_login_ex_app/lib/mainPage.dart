import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  final String strUserID;
  const MainPage({Key? key, required this.strUserID}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(' ${widget.strUserID}님 환영합니다!'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/image9.jpeg'),
                radius: 100.0,
                backgroundColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
