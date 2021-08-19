import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int answer = 0;
  String textSum = '';
  @override
  Widget build(BuildContext context) {
    TextEditingController textController1 = TextEditingController();
    late int inputValue1;
    TextEditingController textController2 = TextEditingController();
    late int inputValue2;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "덧셈결과: $answer",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextField(
              controller: textController1,
              decoration: InputDecoration(labelText: '첫번째 숫자를 입력하세요.'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: textController2,
              decoration: InputDecoration(labelText: '두번째 숫자를 입력하세요.'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                if (textController1.text == '' ||
                    textController1.text.isEmpty &&
                        textController2.text == '' ||
                    textController2.text.isEmpty) {
                  errorSnackBar(context);
                  textSum = "";
                } else {
                  inputValue1 = int.parse(textController1.text);
                  inputValue2 = int.parse(textController2.text);
                  setState(() {
                    answer = inputValue1 + inputValue2;
                  });
                }
              },
              child: Row(
                children: [
                  Icon(Icons.add),
                  SizedBox(
                    width: 20,
                  ),
                  Text('덧셈 계산'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void errorSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('숫자를 입력하세요!'),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.red,
    ),
  );
}
