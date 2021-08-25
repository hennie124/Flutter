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
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController? _productName;
  TextEditingController? _windowSize;
  TextEditingController? _weight;
  TextEditingController? _bag;
  TextEditingController? _color;

  String productName = "맥북 프로";

  @override
  void initState() {
    super.initState();
    _productName = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // 정렬을 꼭 할 것
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 100), // 한쪽에만 padding 주기
                child: Text(
                  'Computer 사양',
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
                        child: Text('제품명 : '),
                        width: 90,
                      ),
                      Container(
                        child: CupertinoTextField(
                          controller: _productName,
                          keyboardType: TextInputType.text,
                          maxLines: 1,
                          placeholder: '제품명',
                          readOnly: false,
                        ),
                        width: 150,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text('화면크기'),
                        width: 90,
                      ),
                      Container(
                        child: CupertinoTextField(
                          controller: _windowSize,
                          keyboardType: TextInputType.text,
                          maxLines: 1,
                          placeholder: '화면크기',
                          readOnly: false,
                        ),
                        width: 150,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text('무게'),
                        width: 90,
                      ),
                      Container(
                        child: CupertinoTextField(
                          controller: _weight,
                          keyboardType: TextInputType.text,
                          maxLines: 1,
                          placeholder: '무게',
                          readOnly: false,
                        ),
                        width: 150,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text('가방'),
                        width: 90,
                      ),
                      Container(
                        child: CupertinoTextField(
                          controller: _bag,
                          keyboardType: TextInputType.text,
                          maxLines: 1,
                          placeholder: '가방',
                          readOnly: false,
                        ),
                        width: 150,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text('색상'),
                        width: 90,
                      ),
                      Container(
                        child: CupertinoTextField(
                          controller: _color,
                          keyboardType: TextInputType.text,
                          maxLines: 1,
                          placeholder: '색상',
                          readOnly: false,
                        ),
                        width: 150,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CupertinoButton(child: Text('OK'), onPressed: () {}),
              CupertinoButton(
                  child: Text('Clear'),
                  onPressed: () {
                    _productName!.text = '';
                    _windowSize!.text = '';
                    _weight!.text = '';
                    _bag!.text = '';
                    _color!.text = '';
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
