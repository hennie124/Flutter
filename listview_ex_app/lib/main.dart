import 'package:flutter/material.dart';
import 'package:listview_ex_app/firstPage.dart';
import 'package:listview_ex_app/flagItem.dart';
import 'package:listview_ex_app/secondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
  List<Flag> flagList = [];

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);

    flagList.add(Flag(
        countryName: 'A_________',
        country: 'America',
        imagePath: 'images/america.png',
        flyExist: true));

    flagList.add(Flag(
        countryName: 'A__________',
        country: 'Austria',
        imagePath: 'images/austria.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'B___________',
        country: 'Belgium',
        imagePath: 'images/belgium.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'C____________',
        country: 'Canada',
        imagePath: 'images/canada.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'C_____________',
        country: 'China',
        imagePath: 'images/china.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'E_____________',
        country: 'Estonia',
        imagePath: 'images/estonia.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'F_____________',
        country: 'France',
        imagePath: 'images/france.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'G______________',
        country: 'Germany',
        imagePath: 'images/germany.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'G______________',
        country: 'Greece',
        imagePath: 'images/greece.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'H______________',
        country: 'Hungary',
        imagePath: 'images/hungany.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'I______________',
        country: 'Italy',
        imagePath: 'images/italy.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'I______________',
        country: 'Italy',
        imagePath: 'images/italy.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'K______________',
        country: 'Korea',
        imagePath: 'images/korea.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'L______________',
        country: 'Latvia',
        imagePath: 'images/latvia.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'L______________',
        country: 'Lithuania',
        imagePath: 'images/lithuania.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'L______________',
        country: 'Luxemburg',
        imagePath: 'images/luxemburg.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'N______________',
        country: 'Netherland',
        imagePath: 'images/netherland.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'R______________',
        country: 'Romania',
        imagePath: 'images/romania.png',
        flyExist: false));

    flagList.add(Flag(
        countryName: 'T______________',
        country: 'Turkey',
        imagePath: 'images/turkey.png',
        flyExist: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('answer this CountryName'),
      ),
      body: TabBarView(
        children: [
          FirstPage(
            list: flagList,
          ),
          SecondPage(
            list: flagList,
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
