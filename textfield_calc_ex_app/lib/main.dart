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
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController num1Controller = TextEditingController();
  late double inputValue1;
  TextEditingController num2Controller = TextEditingController();
  late double inputValue2;
  TextEditingController addController = TextEditingController();
  TextEditingController subController = TextEditingController();
  TextEditingController mulController = TextEditingController();
  TextEditingController divController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('간단한 계산기'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  controller: num1Controller,
                  decoration: InputDecoration(labelText: '첫번째 숫자를 입력하세요'),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: num2Controller,
                  decoration: InputDecoration(labelText: '두번째 숫자를 입력하세요'),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          if (num1Controller.text == '' ||
                              num1Controller.text.isEmpty &&
                                  num2Controller.text == '' ||
                              num2Controller.text.isEmpty) {
                            errorSnackBar(context);
                          } else {
                            inputValue1 = double.parse(num1Controller.text);
                            inputValue2 = double.parse(num2Controller.text);
                            setState(() {
                              addController.text =
                                  "${inputValue1 + inputValue2}";
                              subController.text =
                                  "${inputValue1 - inputValue2}";
                              mulController.text =
                                  "${inputValue1 * inputValue2}";
                              divController.text =
                                  "${inputValue1 / inputValue2}";
                            });
                          }
                        },
                        child: Text('계산하기')),
                    SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (num1Controller.text != '' &&
                            num2Controller.text != '') {
                          num1Controller.text = '';
                          num2Controller.text = '';
                        }
                      },
                      child: Text('지우기'),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.redAccent)),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                TextField(
                  controller: addController,
                  decoration: InputDecoration(labelText: '덧셈결과'),
                  readOnly: true,
                ),
                SizedBox(
                  width: 10,
                ),
                TextField(
                  controller: subController,
                  decoration: InputDecoration(labelText: '뺄셈결과'),
                  readOnly: true,
                ),
                SizedBox(
                  width: 10,
                ),
                TextField(
                  controller: mulController,
                  decoration: InputDecoration(labelText: '곱셈결과'),
                  readOnly: true,
                ),
                SizedBox(
                  width: 10,
                ),
                TextField(
                  controller: divController,
                  decoration: InputDecoration(labelText: '나눗셈결과'),
                  readOnly: true,
                ),
                SizedBox(
                  width: 10,
                ),
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
      content: Text('숫자를 입력하세요!'),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.red,
    ),
  );
}
