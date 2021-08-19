import 'package:flutter/material.dart';

class Message2nd extends StatelessWidget {
  const Message2nd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Mail'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
        child: Center(
          child: Column(
            children: [
              Text('유비에게서 받은 메일'),
              Text('관우에게서 받은 메일'),
              Text('장비에게서 받은 메일'),
            ],
          ),
        ),
      ),
    );
  }
}
