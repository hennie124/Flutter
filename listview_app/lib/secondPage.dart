import 'package:flutter/material.dart';
import 'package:listview_app/flagItem.dart';

class SecondPage extends StatelessWidget {
  final List<Flag> list;
  const SecondPage({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, position) {
            return GestureDetector(
              child: Card(
                child: Row(
                  children: [
                    Image.asset(
                      list[position].flagImagePath,
                      height: 100,
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(list[position].countryName),
                    ),
                  ],
                ),
              ),
              onTap: () {
                _showDialog(context, list[position].country);
              },
            );
          },
          itemCount: list.length,
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
void _showDialog(BuildContext context, String name) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("국가명"),
          content: Text("이 국가는 $name 입니다."),
          actions: [
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('종료')),
          ],
        );
      });
}
