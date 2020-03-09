import 'package:flutter/material.dart';
import 'package:noiseplug/drawer/MyAccount.dart';
import 'package:noiseplug/drawer/business.dart';
import 'package:noiseplug/drawer/faqs.dart';
import 'package:noiseplug/drawer/privacy.dart';
import 'package:noiseplug/drawer/terms.dart';
import 'package:noiseplug/signin.dart';
import 'package:noiseplug/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Start extends StatefulWidget {

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  FirebaseUser user;
  Future<void>getUserData()async{
    FirebaseUser userData=await FirebaseAuth.instance.currentUser();
    setState(() {
      user=userData;
    });

  }
  Future <void> logout()async{
    FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(context,MaterialPageRoute(
    builder: (BuildContext context)=>Signin()));
  }
  @override
  void initState() {
    super.initState();
    getUserData();
  }
  @override
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  Widget build(BuildContext context) {
     return Scaffold(
       key: _scaffoldKey,
      appBar: AppBar(
        //Color.fromARGB(255, 50, 76,82)
        backgroundColor:bgcolor,
                  elevation: 0,         
           leading: new IconButton(
                icon: new Icon(Icons.sort,color: iconcolor,size: 35,),
                onPressed: () => _scaffoldKey.currentState.openDrawer())),
      
      drawer: Theme(data:  Theme.of(context).copyWith(
                 canvasColor:bgcolor, //This will change the drawer background to blue.
                 //other styles
              ), child: 
      Drawer(
        
        child:Container(
       decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.55,0.8],
          colors: [
            bgcolor,
            cyandeg3
          ],
        ),
      ),
          child:ListView(
          children: <Widget>[
            
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: bgcolor
              ),
              
              accountEmail:user.email.isEmpty?
               Text("Not Provided Email",style: TextStyle(color: cyandeg1)):
               Text("${user.email}",style: TextStyle(color: cyandeg1)),
              accountName: Text("User Name",style: TextStyle(color: cyandeg2)),
                currentAccountPicture:  GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: AssetImage("images/user.png"),
                  backgroundColor: bgcolor,
                ),
                onTap: () => print("User Name"),
              ),
              
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     fit: BoxFit.fill,
              //     image: AssetImage('images/bg.jpg',)
              //   )

              // ),
            )
            ,
            ListTile(
              title: Text("My Account",style: TextStyle(color: cyandeg1),),
                onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context)=>MyAccount()
              ));
              }
            ),
            ListTile(
              title: Text("NP for business",style: TextStyle(color: cyandeg1),),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context)=>Business()
              ));
              }
            ),
            ListTile(
              title: Text("FAQs",style: TextStyle(color: cyandeg1),),
                            onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context)=>Faqs()
              ));
              }
            ),
            Divider(),
            ListTile(
              title: Text("Terms & Conditions",style: TextStyle(color: cyandeg1),),
                            onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context)=>Terms()
              ));
              }
            ),
            ListTile(
              title: Text("Privacy Policy",style: TextStyle(color: cyandeg1),),
                            onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context)=>Privacy()
              ));
              }
            ),
            ListTile(
              title: Text("Log Out",style: TextStyle(color: cyandeg1),),
              trailing: Icon(Icons.power_settings_new,color: iconcolor,),
                            onTap: logout
              

            ),
            ListTile(
              title: Text("close",style: TextStyle(color: cyandeg1),),
              trailing: Icon(Icons.close,color: iconcolor,),
              onTap: Navigator.of(context).pop,
            ),
          ],
        ) ,
        )

      ),),
    body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height
      ,
  decoration: BoxDecoration(
      gradient: RadialGradient(
        colors: [cyandeg1,bgcolor]
      ),
      ),
  child: Center(
    child: RawMaterialButton(
      //focusColor: bgcolor,
      hoverColor: bgcolor,
      disabledElevation: 0,
  onPressed: () {},
  child: new Icon(
    
     Icons.pause,
     color: iconcolor,
     size: 70.0,
  ),
  shape: new CircleBorder(),
  elevation: 0,
  fillColor: startbutton,
  padding: const EdgeInsets.all(40),
),
    ),
  ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.cyan,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: iconcolor,),
            title: Text('Home',style: bottomstyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,color: iconcolor,),
            title: Text('Alert',style: bottomstyle),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings ,color: iconcolor,),
            title: Text('Settings',style: bottomstyle,),
          ),
        ],
        currentIndex: _selectedIndex,
       // selectedItemColor: Colors.cyan,
        onTap: _onItemTapped,
      ),
      
     
    );
  }
}