import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  //처음 램프이미지 켜져있고, 크기는 작고 버튼은 이미지 확대, 전구스위치는 켜져있음
  String _lampImage = 'images/lamp_on.png'; // 이미지는 켜있는 이미지
  double _lampWidth = 150; // 램프 초기 가로 크기
  double _lampHeight = 300; // 램프 초기 세로 크기
// 버튼 이름
  String _lampSizeStatus = 'small'; // 램프 사이즈 초기 상태: 작음
  bool _switch = true; //스위치 켜있다.

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        home: CupertinoPageScaffold(
      child: Center(
        child: Column(
          children: [
            //Container :  화면에서 frame 잡아주는 것과 같다. : 위의 이미지가 커지든 작아지든 아래 위치가 동일
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Aler',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    _lampImage,
                    width: _lampWidth,
                    height: _lampHeight,
                  ),
                ],
              ),
              //container 크기
              width: 350,
              height: 650,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                    child: Text('경고'),
                    onPressed: () {
                      setState(() {
                        if (_switch == true) {
                          _showAlert(title: "경고", message: "현재 ON 상태입니다.");
                          _switch = true;
                        } else {
                          _showAlert(title: "경고", message: "현재 OFF 상태입니다.");
                          _switch = false;
                        }
                        decisionOnOff();
                      });
                    }),
                SizedBox(
                  width: 20,
                ),
                CupertinoButton(
                    child: Text('램프 끄기'),
                    onPressed: () {
                      setState(() {
                        _showActionSheet(
                            title: "램프 끄기", message: "램프를 끄시겠습니까?");
                      });
                    }),
                CupertinoButton(
                    child: Text('램프 켜기'),
                    onPressed: () {
                      setState(() {
                        _showAction1(title: "램프 켜기", message: "램프를 켜시겠습니까?");
                      });
                    })
              ],
            )
          ],
        ),
      ),
    ));
  }

  //setState 사용
  void decisionLampSize() {
    if (_lampSizeStatus == "small") {
      //size 상태를 large로
      _lampSizeStatus = "large";
      //작았으니 크게 하자
      _lampWidth = 300;
      _lampHeight = 600;
      // 이미지가 커졌으니 축소 버튼으로 변경
    } else {
      //위와 반대로
      _lampSizeStatus = "small";
      _lampWidth = 150;
      _lampHeight = 300;
    }
  } //decisionLampSize

  void decisionOnOff() {
    if (_switch) {
      _lampImage = "images/lamp_on.png";
    } else {
      _lampImage = "images/lamp_off.png";
    }
  } //decisionOnOff

  void _showAlert({String? title, String? message}) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(title!),
            content: Text(message!),
            actions: [
              CupertinoDialogAction(
                isDefaultAction: true,
                child: Text(
                  "네, 알겠습니다!",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  print("네");
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  void _showActionSheet({String? title, String? message}) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(title!),
            content: Text(message!),
            actions: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 0, 10.0, 0.0),
                    child: CupertinoActionSheetAction(
                      isDefaultAction: true,
                      child: Text(
                        "네",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        setState(() {
                          _switch = false;
                          decisionOnOff();
                        });
                        print("Alert : Action Cancel");
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100.0, 0, 10.0, 0.0),
                    child: CupertinoActionSheetAction(
                      isDefaultAction: true,
                      child: Text(
                        "아니오",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        _switch = true;
                        decisionOnOff();
                        print("Alert : Action Cancel");
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              )
            ],
          );
        });
  }

  void _showAction1({String? title, String? message}) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(title!),
            content: Text(message!),
            actions: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 0, 10.0, 0.0),
                    child: CupertinoActionSheetAction(
                      isDefaultAction: true,
                      child: Text(
                        "네",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        setState(() {
                          _switch = true;
                          decisionOnOff();
                        });
                        print("Alert : Action Cancel");
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100.0, 0, 10.0, 0.0),
                    child: CupertinoActionSheetAction(
                      isDefaultAction: true,
                      child: Text(
                        "아니오",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        _switch = false;
                        decisionOnOff();
                        print("Alert : Action Cancel");
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              )
            ],
          );
        });
  }
} // < ------