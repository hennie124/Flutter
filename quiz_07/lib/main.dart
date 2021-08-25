import 'package:quiz_07/zeroFormat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_localizations/flutter_localizations.dart';

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
  String currentDateTime = "";
  bool _isRunning = true;
  ZeroFormat zero = ZeroFormat();
  DateTime? chosenDateTime;
  dynamic backgroundColor;
  bool _isTimerOn = false;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (!_isRunning) {
        timer.cancel();
      }
      _addItem();
      _colorChange();
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        localizationsDelegates: [
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate
        ],
        supportedLocales: [
          const Locale('ko', 'KO'),
          const Locale('en', 'US'),
        ],
        home: CupertinoPageScaffold(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                // ignore: unnecessary_brace_in_string_interps
                "현재 시간 : ${currentDateTime}",
                style: TextStyle(fontSize: 18),
              ),
              Container(
                child: CupertinoDatePicker(
                    initialDateTime: DateTime.now(),
                    use24hFormat: true,
                    onDateTimeChanged: (value) {
                      print(value);
                      chosenDateTime = value;
                    }),
                width: 300,
                height: 200,
              ),
              Text(
                "선택 시간 : ${chosenDateTime != null ? _chosenItem(chosenDateTime!) : "시간을 선택하세요!"}",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        )));
  }

  void _addItem() {
    final DateTime now = DateTime.now();
    setState(() {
      currentDateTime =
          "${now.year}-${zero.monthZero(now.month)}-${zero.dayZero(now.day)} ${zero.weekday(now.weekday)} ${zero.hourZero(now.hour)}:${zero.minuteZero(now.minute)}:${zero.secondZero(now.second)}";
    });
  }

  String _chosenItem(DateTime now) {
    String chosenDateTime = "";
    setState(() {
      chosenDateTime =
          "${now.year}-${zero.monthZero(now.month)}-${zero.dayZero(now.day)} ${zero.weekday(now.weekday)} ${zero.hourZero(now.hour)}:${zero.minuteZero(now.minute)}:${zero.secondZero(now.second)}";

      // ignore: unnecessary_statements
    });
    return chosenDateTime;
  }

  void _colorChange() {
    final DateTime now = DateTime.now();
    setState(() {
      if (chosenDateTime!.minute == now.minute) {
        _isTimerOn = true;
      } else {
        _isTimerOn = false;
      }

      if (_isTimerOn) {
        if (now.second % 2 == 1) {
          backgroundColor = Colors.amber;
        } else {
          backgroundColor = Colors.pink[400];
        }
      } else {
        backgroundColor = null;
      }
    });
  }
}
