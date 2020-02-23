import 'package:flutter/material.dart';
import 'package:noiseplug/styles.dart';
class Business extends StatefulWidget {
  @override
  _BusinessState createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  @override
  Widget build(BuildContext context) {
 return   Scaffold(
      appBar: AppBar(
        
        //Color.fromARGB(255, 50, 76,82) 
        backgroundColor:bgcolor,
        title:  Text("Business",
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
      child: Center(
        child: Icon(Icons.lock,color: iconcolor,size: 50,),
      ),
      
      ),
      
      );
  }
}