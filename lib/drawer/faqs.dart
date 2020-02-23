import 'package:flutter/material.dart';
import 'package:noiseplug/styles.dart';

class Faqs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Color.fromARGB(255, 50, 76,82) 
        backgroundColor:bgcolor,
        title:  Text("FAQs",
        style:TextStyle(color: cyandeg1)
        ),
        elevation: 1,
      ),
      body:  Container(
        width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
       decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1,0.8],
          colors: [
            bgcolor,
            cyandeg3
          ],
        ),
      ),
      
      
      ),
      
      );
  }
}