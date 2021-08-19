import 'package:flutter/material.dart';

class Gesture extends StatelessWidget {
  const Gesture({Key? key}) : super(key: key);

/*
stateless 는 Data의 상태가 변하지 않는 것 stateful은 Data의 상태가 변하는 것
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert and Push'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            _showDialog(context);
          },
          child: Text('Move the 2nd page'),
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Page 이동"),
        content: Text("아래의 버튼을 누르면 페이지 이동을 합니다."),
        actions: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/2nd');
            },
            child: Text('Page'),
          ),
        ],
      );
    },
  );
}
