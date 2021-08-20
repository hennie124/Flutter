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
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController textController1 = TextEditingController();
    late String inputValue1;
    TextEditingController textController2 = TextEditingController();
    late String inputValue2;

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(20.0),
            //   child: CircleAvatar(
            //     backgroundImage: AssetImage('images/image7.png'),
            //     radius: 70.0,
            //     backgroundColor: Colors.white,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                Icons.account_circle,
                size: 200.0,
                color: Colors.blue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: textController1,
                decoration: InputDecoration(labelText: 'Username'),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: textController2,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                onPressed: () {
                  if (textController1.text == '' ||
                      textController1.text.isEmpty &&
                          textController2.text == '' ||
                      textController2.text.isEmpty) {
                    errorSnackBar(context);
                  } else if (textController1.text != 'qwer' ||
                      textController2.text != '1234') {
                    inputValue1 = textController1.text;
                    inputValue2 = textController2.text;
                    showSnackBar(context, inputValue1, inputValue2);
                  } else {
                    inputValue1 = textController1.text;
                    inputValue2 = textController2.text;
                    setState(() {
                      _showDialog(context, inputValue1, inputValue2);
                    });
                  }
                },
                child: Text('Login')),
          ],
        ),
      ),
    );
  }
}

void errorSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('사용자ID와 암호를 입력하세요!'),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.red,
    ),
  );
}

void showSnackBar(
    BuildContext context, String inputValue1, String inputValue2) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('사용자 ID나 암호가 맞지 않습니다.'),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.blue,
    ),
  );
}

void _showDialog(BuildContext context, String inputValue1, String inputValue2) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("환영합니다!"),
          content: Text("신분이 확인되었습니다."),
          actions: [
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK')),
          ],
        );
      });
}
