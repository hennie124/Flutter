import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int answer = 0;
  String textSum = '';
  @override
  Widget build(BuildContext context) {
    TextEditingController textController1 = TextEditingController();
    late int inputValue1;
    TextEditingController textController2 = TextEditingController();
    late int inputValue2;

    return Scaffold(
      appBar: AppBar(
        title: Text('덧셈 구하기'),
      ),
      body: Center(
        child: Column(
          children: [
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "입력하신 숫자의 합은 $answer 입니다.",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (textController1.text == '' ||
                    textController1.text.isEmpty &&
                        textController2.text == '' ||
                    textController2.text.isEmpty) {
                  errorSnackBar(context);
                } else {
                  inputValue1 = int.parse(textController1.text);
                  inputValue2 = int.parse(textController2.text);
                  setState(() {
                    answer = inputValue1 + inputValue2;
                    textSum = "입력하신 숫자의 합은 $answer 입니다.";
                  });

                  showSnackBar(context, inputValue1, inputValue2, answer);
                }
              },
              child: Text('계산'),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                textSum,
                style: TextStyle(
                  color: Colors.red,
                  letterSpacing: 2.0,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
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

void showSnackBar(
    BuildContext context, int inputValue1, int inputValue2, int answer) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('결과는 $answer 입니다!'),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.blue,
    ),
  );
}
