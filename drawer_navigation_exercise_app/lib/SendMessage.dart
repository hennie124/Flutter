import 'package:flutter/material.dart';

class SendMessage extends StatelessWidget {
  const SendMessage({Key? key}) : super(key: key);

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
              Text('유비에게 보낸 메일'),
              Text('관우에게 보낸 메일'),
              Text('장비에게 보낸 메일'),
            ],
          ),
        ),
      ),
    );
  }
}
