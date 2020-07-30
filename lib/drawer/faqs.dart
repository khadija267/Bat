import 'package:flutter/material.dart';
import 'package:noiseplug/styles.dart';
import 'package:noiseplug/custom.dart' as custom;
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

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
      child: ListView(
        
        children: <Widget>[
          
         
          custom.ExpansionTile(
            iconColor: iconcolor,
            title: Text("What is this app for?",
          style:TextStyle(fontSize: 17 ,color: cyandeg1)),
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10),
            child:Text("It's for investigation of malfunctioning machines.",
            style:TextStyle(fontSize: 15 ,color: cyandeg2),
            
            ))
            
          ],
          ),
         custom.ExpansionTile(
         iconColor: iconcolor,
            title: Text("How to use?",
          style:TextStyle(fontSize: 17 ,color: cyandeg1)),
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10),
            child:Text("Simply connect your NoisePlug to an earphone.",
            style:TextStyle(fontSize: 15 ,color: cyandeg2),
            
            ))
          ],
          ),
          custom.ExpansionTile(
          iconColor: iconcolor,
            title: Text("What is NP for business?",
          style:TextStyle(fontSize: 17 ,color: cyandeg1)),
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10),
            child:Text("It's a Noise Recognition feature that detects anomaly behaviour of machines then sends you an Alert.",
            style:TextStyle(fontSize: 15 ,color: cyandeg2),
            
            ))
          ],
          ),
         custom.ExpansionTile(
                 iconColor: iconcolor,
            title: Text("Which Machines or Sub-Machines NP for Business Includes?",
          style:TextStyle(fontSize: 17 ,color: cyandeg1)),
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10),
            child:Text("Fans,Valvs, Pumps and Slide Rails.",
            style:TextStyle(fontSize: 15 ,color: cyandeg2),
            
            ))
          ],
          ),
          custom.ExpansionTile(
                  iconColor: iconcolor,
            title: Text("How Upgrade to NP for Business?",
          style:TextStyle(fontSize: 17 ,color: cyandeg1)),
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10),
            child:Text("Simply go to NP for Business Section and choose your Plan.",
            style:TextStyle(fontSize: 15 ,color: cyandeg2),
            
            ))
          ],
          ),
          custom.ExpansionTile(
                  iconColor: iconcolor,
            title: Text("How to reset My Password?",
          style:TextStyle(fontSize: 17 ,color: cyandeg1)),
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10),
            child:Linkify(
              onOpen: _onOpen,
            text:"Click here https://policies.google.com/privacy ",
            linkStyle: TextStyle(fontSize: 16 ,color: cyandeg1),
            style:TextStyle(fontSize: 15 ,color: cyandeg2)
          ),
           
            )
          ],
          ),

        ],
      ),
      
      
      ),
      
      );
  }
}
 Future<void> _onOpen(LinkableElement link) async {
    if (await canLaunch(link.url)) {
      await launch(link.url);
    } else {
      throw 'Could not launch $link';
    }
  }