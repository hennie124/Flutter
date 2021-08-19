import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mail'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/1st');
              },
              icon: Icon(Icons.email)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/2nd');
              },
              icon: Icon(Icons.email_outlined)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/image3.png'),
                backgroundColor: Colors.white,
              ),
              accountName: Text('Pikachu'),
              accountEmail: Text('pikachu@naver.com'),
              onDetailsPressed: () {
                print("main page is clicked");
              },
              decoration: BoxDecoration(
                  color: Colors.red[400],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.black,
              ),
              title: Text('Send Message'),
              onTap: () {
                Navigator.pushNamed(context, '/1st');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.email_outlined,
                color: Colors.black,
              ),
              title: Text('Receive Message'),
              onTap: () {
                Navigator.pushNamed(context, '/2nd');
              },
            ),
          ],
        ),
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
