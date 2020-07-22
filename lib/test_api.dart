import 'package:noiseplug/api.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  String url;

  var data;

  String query = 'Query';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PYTHON AND FLUTTER'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (value) {
                  url = 'http://127.0.0.1:5000/api?Query=' + value.toString();
                },
                decoration: InputDecoration(
                    hintText: 'Search Anything Here',
                    suffixIcon: GestureDetector(
                        onTap: () async {
                          data = await getdata(url);
                          var decode = jsonDecode(data);
                          setState(() {
                          query = decode['Query'];
                          });
                        },
                        child: Icon(Icons.search))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                query,
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}