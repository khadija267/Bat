import 'package:flutter/material.dart';
//import 'package:noiseplug/controller.dart';
import 'package:noiseplug/signin.dart';
//import 'package:noiseplug/start.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoisePlug',
      home: Signin(),
      debugShowCheckedModeBanner: false,
      routes: {

       // '/inclass':(context)=>Inclass(),
       // '/upclass':(context)=>Upclass(),
      },
    );
  }
}
