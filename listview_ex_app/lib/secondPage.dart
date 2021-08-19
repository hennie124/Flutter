import 'package:flutter/material.dart';
import 'package:listview_ex_app/flagItem.dart';

class SecondPage extends StatefulWidget {
  final List<Flag> list;
  const SecondPage({Key? key, required this.list}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final nameController = TextEditingController();
  final answerController = TextEditingController();
  bool flyExist = false;
  var _imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: 'enter your question'),
                  keyboardType: TextInputType.text,
                  maxLines: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: answerController,
                  decoration: InputDecoration(labelText: 'enter your answer '),
                  keyboardType: TextInputType.text,
                  maxLines: 1,
                ),
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      child: Image.asset(
                        'images/america.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = "images/america.png";
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'images/austria.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = "images/austria.png";
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'images/belgium.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = "images/belgium.png";
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'images/canada.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = "images/canada.png";
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'images/china.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = "images/china.png";
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'images/estonia.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = "images/estonia.png";
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'images/france.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = "images/france.png";
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'images/germany.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = "images/germany.png";
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'images/greece.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = "images/greece.png";
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'images/hungary.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = "images/hungary.png";
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'images/italy.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = "images/italy.png";
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'images/korea.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = "images/korea.png";
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'images/latvia.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = "images/latvia.png";
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'images/lithuania.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = "images/lithuania.png";
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'images/luxemburg.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = "images/luxemburg.png";
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'images/netherland.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = "images/netherland.png";
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'images/romania.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = "images/romania.png";
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'images/turkey.png',
                        width: 80,
                      ),
                      onTap: () {
                        _imagePath = "images/turkey.png";
                      },
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  onPressed: () {
                    var country = Flag(
                        countryName: nameController.text,
                        country: answerController.text,
                        imagePath: _imagePath,
                        flyExist: flyExist);

                    AlertDialog dialog = AlertDialog(
                      title: Text("문제 추가하기"),
                      content: Text(
                        'This country is ${country.country}.'
                        'This answer is ${country.countryName}. \n'
                        'Would you like to add a question?',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      actions: [
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue)),
                            onPressed: () {
                              widget.list.add(country);
                              Navigator.of(context).pop();
                            },
                            child: Text('YES')),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.red)),
                            onPressed: () {
                              widget.list.add(country);
                              Navigator.of(context).pop();
                            },
                            child: Text('NO')),
                      ],
                    );
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return dialog;
                        });
                  },
                  child: Text("문제 추가하기")),
            ],
          ),
        ),
      ),
    );
  }
}
