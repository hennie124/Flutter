import 'package:flutter/material.dart';
import 'package:listview_ex_app/flagItem.dart';

class FirstPage extends StatelessWidget {
  final List<Flag> list;
  const FirstPage({Key? key, required this.list}) : super(key: key);

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
                      list[position].imagePath,
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
          title: Text("Country Name"),
          content: Text("This country is $name."),
          actions: [
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Finish')),
          ],
        );
      });
}
