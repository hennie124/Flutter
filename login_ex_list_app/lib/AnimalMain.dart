import 'package:flutter/material.dart';
import 'package:login_ex_list_app/animalAdd.dart';
import 'package:login_ex_list_app/animalItem.dart';
import 'package:login_ex_list_app/mainPage.dart';

class AnimalMain extends StatefulWidget {
  AnimalMain({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AnimalMain>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  List<Animal> animalList = [];

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);

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
          MainPage(
            list: animalList,
          ),
          animalAdd(
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
        ],
        controller: controller,
      ),
    );
  }
}
