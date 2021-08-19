import 'package:flutter/material.dart';

class ReceiveMessage extends StatelessWidget {
  const ReceiveMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Received Mail'),
        backgroundColor: Colors.red,
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
