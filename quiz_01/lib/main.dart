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

// 일단 이름을 작성하면 welcome 옆에 넣는 겨
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController? _Name;

  @override
  void initState() {
    super.initState();
    _Name = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Text(
                  '이름을 입력하세요!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text('Name: '),
                        width: 90,
                      ),
                      Container(
                        child: CupertinoTextField(
                          controller: _Name,
                        ),
                      ),
                      CupertinoButton(child: Text('OK'), onPressed: () {}),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
