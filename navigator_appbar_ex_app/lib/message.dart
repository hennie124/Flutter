import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator_AppBar'),
        actions: [
          IconButton(
              onPressed: () {
                print("Send Message");
              },
              icon: Icon(Icons.email)),
          IconButton(
              onPressed: () {
                print("Receive Message");
              },
              icon: Icon(Icons.email_outlined)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/1st');
              },
              child: Text("보낸 편지함"),
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/2nd');
                },
                child: Text("받은 편지함"))
          ],
        ),
      ),
    );
  }
}
