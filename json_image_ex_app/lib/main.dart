import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // for json

//json : javascrip object...
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String result = "";
  late List data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = [];
    getJSONData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JSON Test"),
      ),
      body: Container(
        child: data.length == 0
            ? Text(
                "데이터가 없습니다.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            : ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Card(
                    child: Row(
                      children: [
                        Image.network(
                          data[index]['image'],
                          height: 200,
                          width: 200,
                          fit: BoxFit.contain,
                        ),
                        Column(
                          children: [
                            Text(
                              "영화제목",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w900),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
                itemCount: data.length,
              ),
      ),
    );
  }

  Future<String> getJSONData() async {
    var url = Uri.parse('http://localhost:8080/flutter/images.json');
    var response = await http.get(url);
    print(response.body);
    setState(() {
      var dataConvertedJSON = json.decode(response.body);
      List result = dataConvertedJSON['results'];
      print(result);
      data.addAll(result);
    });

    return "a";
  }
}
