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
  TextEditingController textController = TextEditingController();
  late String inputValue;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Single TextField'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  controller: textController,
                  decoration: InputDecoration(labelText: '글자를 입력하세요.'),
                  keyboardType: TextInputType.text,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (textController.text == '' ||
                          textController.text.isEmpty) {
                        errorSnackBar(context);
                      } else {
                        inputValue = textController.text;
                        showSnackBar(context, inputValue);
                      }
                    },
                    child: Text('출력'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void errorSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('글자를 입력하세요!'),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.red,
    ),
  );
}

void showSnackBar(BuildContext context, String inputValue) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('입력하신 글자는 $inputValue 입니다!'),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.blue,
    ),
  );
}
