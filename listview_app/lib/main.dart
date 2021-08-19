import 'package:flutter/material.dart';
import 'package:listview_app/firstPage.dart';
import 'package:listview_app/flagItem.dart';
import 'package:listview_app/secondPage.dart';
import 'package:listview_app/animalItem.dart';
import 'package:listview_app/thirdPage.dart';

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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  List<Animal> animalList = [];
  List<Flag> flagList = [];

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);

    animalList.add(Animal(
        animalName: '벌',
        kind: '곤충',
        imagePath: 'images/bee.png',
        flyExist: true));

    animalList.add(Animal(
        animalName: '고양이',
        kind: '포유류',
        imagePath: 'images/cat.png',
        flyExist: false));

    animalList.add(Animal(
        animalName: '젖소',
        kind: '포유류',
        imagePath: 'images/cow.png',
        flyExist: false));

    animalList.add(Animal(
        animalName: '강아지',
        kind: '포유류',
        imagePath: 'images/dog.png',
        flyExist: false));

    animalList.add(Animal(
        animalName: '여우',
        kind: '포유류',
        imagePath: 'images/fox.png',
        flyExist: false));

    animalList.add(Animal(
        animalName: '원숭이',
        kind: '영장류',
        imagePath: 'images/monkey.png',
        flyExist: false));

    animalList.add(Animal(
        animalName: '돼지',
        kind: '포유류',
        imagePath: 'images/pig.png',
        flyExist: false));

    animalList.add(Animal(
        animalName: '늑대',
        kind: '포유류',
        imagePath: 'images/wolf.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'A_________',
        country: 'America',
        flagImagePath: 'images/america.png',
        flyExist: true));

    flagList.add(Flag(
        countryName: 'A__________',
        country: 'Austria',
        flagImagePath: 'images/austria.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'B___________',
        country: 'Belgium',
        flagImagePath: 'images/belgium.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'C____________',
        country: 'Canada',
        flagImagePath: 'images/canada.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'C_____________',
        country: 'China',
        flagImagePath: 'images/china.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'E_____________',
        country: 'Estonia',
        flagImagePath: 'images/estonia.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'F_____________',
        country: 'France',
        flagImagePath: 'images/france.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'G______________',
        country: 'Germany',
        flagImagePath: 'images/germany.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'G______________',
        country: 'Greece',
        flagImagePath: 'images/greece.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'H______________',
        country: 'Hungary',
        flagImagePath: 'images/hungary.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'I______________',
        country: 'Italy',
        flagImagePath: 'images/italy.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'I______________',
        country: 'Italy',
        flagImagePath: 'images/italy.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'K______________',
        country: 'Korea',
        flagImagePath: 'images/korea.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'L______________',
        country: 'Latvia',
        flagImagePath: 'images/latvia.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'L______________',
        country: 'Lithuania',
        flagImagePath: 'images/lithuania.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'L______________',
        country: 'Luxemburg',
        flagImagePath: 'images/luxemburg.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'N______________',
        country: 'Netherland',
        flagImagePath: 'images/netherland.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'R______________',
        country: 'Romania',
        flagImagePath: 'images/romania.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'T______________',
        country: 'Turkey',
        flagImagePath: 'images/turkey.png',
        flyExist: false));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Test'),
      ),
      body: TabBarView(
        children: [
          FirstPage(
            list: animalList,
          ),
          SecondPage(
            list: flagList,
          ),
          ThirdPage(
            list: animalList,
          ),
        ],
        controller: controller,
      ),
      bottomNavigationBar: TabBar(
        labelColor: Colors.blueAccent,
        tabs: [
          Tab(
            icon: Icon(
              Icons.looks_one,
              color: Colors.blue,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.looks_two,
              color: Colors.blue,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.looks_3,
              color: Colors.blue,
            ),
          ),
        ],
        controller: controller,
      ),
    );
  }
}
