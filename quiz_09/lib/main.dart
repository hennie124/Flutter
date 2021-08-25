import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
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
  List _numList = [];
  List<Widget> pickerList = [];
  TextEditingController _editing = TextEditingController();

  int _selectedItem = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 2; i < 10; i++) {
      _numList.add(i);
      pickerList.add(Text("$i단"));
    }
    multAction();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _numList[_selectedItem].toString() + "단",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 150,
                width: 250,
                child: CupertinoPicker(
                    backgroundColor: Colors.white,
                    itemExtent: 30,
                    scrollController:
                        FixedExtentScrollController(initialItem: 0),
                    onSelectedItemChanged: (value) {
                      print(value);
                      setState(() {
                        _selectedItem = value;
                        multAction();
                      });
                    },
                    children: pickerList),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CupertinoTextField(
                  maxLines: 10,
                  controller: _editing,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void multAction() {
    String result = "";
    for (var i = 2; i < 10; i++) {
      result +=
          "${_numList[_selectedItem]} X $i = ${_numList[_selectedItem] * i}\n";
    }
    setState(() {
      _editing.text = result;
    });
  }
}
