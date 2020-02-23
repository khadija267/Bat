import 'package:flutter/material.dart';
import 'package:noiseplug/signin.dart';
import 'package:noiseplug/styles.dart';
class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
       return  Scaffold(
appBar: AppBar(
        //Color.fromARGB(255, 50, 76,82) 
        backgroundColor:bgcolor,
        title:  Text("My Account",
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
        padding: EdgeInsets.all(30),
        child:ListView(
          padding: EdgeInsets.only(top: 40),
          children: <Widget>[
           TextFormField(
                         autofocus: true,
                         decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: bgcolor),   
                      ),  
              focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: cyandeg2),
                   ), 
                           icon: Padding(
                             padding: EdgeInsets.only(bottom: 2),
                             child: Icon(Icons.account_balance ,color: iconcolor,),
                           ),
                           
                          labelText: 'Company Name',
                          labelStyle: TextStyle(
                            color: cyandeg2,
                            
                          ),

                          ),
               //key: key,
                       ),
            TextFormField(obscureText: true,
                         autofocus: true,
                         decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: bgcolor),   
                      ),  
              focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: cyandeg2),
                   ), 
                           icon: Padding(
                             padding: EdgeInsets.only(bottom: 2),
                             child: Icon(Icons.vpn_key ,color: iconcolor,),
                           ),
                           
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: cyandeg2,
                            
                          ),

                          ),
               //key: key,
                       ),

           TextFormField(
                         autofocus: true,
                         decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: bgcolor),   
                      ),  
              focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: cyandeg2),
                   ), 
                           icon: Padding(
                             padding: EdgeInsets.only(bottom: 2),
                             child: Icon(Icons.mail ,color: iconcolor,),
                           ),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: cyandeg2,
                            
                          ),

                          ),
               //key: key,
                       ),
              TextFormField(
                         autofocus: true,
                         decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: bgcolor),   
                      ),  
              focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: cyandeg2),
                   ), 
                           icon: Padding(
                             padding: EdgeInsets.only(bottom: 2),
                             child: Icon(Icons.phone ,color: iconcolor,),
                           ),
                           
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(
                            color: cyandeg2,
                            
                          ),

                          ),
               //key: key,
                       ),
              TextFormField(
                         autofocus: true,
                         decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: bgcolor),   
                      ),  
              focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: cyandeg2),
                   ), 
                           icon: Padding(
                             padding: EdgeInsets.only(bottom: 2),
                             child: Icon(Icons.credit_card ,color: iconcolor,),
                           ),
                           
                          labelText: 'Your Plan',
                          labelStyle: TextStyle(
                            color: cyandeg2,
                            
                          ),

                          ),
               //key: key,
                       ),
            Padding(padding: EdgeInsets.only(top: 10),
                    child:ButtonTheme(
                      minWidth: 5,
                      //height: 50,
                      child:FlatButton(
                      colorBrightness: Brightness.dark,
                      padding: EdgeInsets.all(20),
                                 onPressed: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context)=>Signin()
              ));
              },
                      textColor: cyandeg2,
                      child: Text("Log Out"),
            ), 
                    ),
                    
              
            ),

           
          ],
        ),


      ),
      
      floatingActionButton: FloatingActionButton(
        
         
              onPressed: (){},
              //   Navigator.of(context).pop();
              //   Navigator.of(context).push(MaterialPageRoute(
              //   builder: (BuildContext context)=>editable
              // ));
              // },
                backgroundColor: bgcolor,
                child: new Icon(Icons.border_color,color:cyandeg2),

      ),
    );

  }
}