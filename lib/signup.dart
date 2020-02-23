import 'package:flutter/material.dart';
import 'package:noiseplug/drawer/terms.dart';
//import 'package:noiseplug/drawer/terms.dart';
import 'package:noiseplug/signin.dart';
import 'package:noiseplug/styles.dart';

class Signup extends StatefulWidget {
  
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
    String dropdownValue = 'Personal Use';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //resizeToAvoidBottomPadding: true,
    //resizeToAvoidBottomInset: false,
    body:
     Container(

      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height
      ,
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
      child:SingleChildScrollView(
        child: Column(
        children: <Widget>[
             Padding(
               padding: EdgeInsets.only(top: 70),
               child: Text('NOISEPLUG',
                   textAlign: TextAlign.center,
                   style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,
                   color: cyandeg1
                    ),
             ),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[
                 InkWell(
                   onTap: (){
                     Navigator.pushNamed(context, '/inclass');
                   },
                   child: Padding(
                   padding:EdgeInsets.only(top: 130,left: 10),
                   child: FlatButton(
                   onPressed:(){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context)=>Signin()
              ));
              } ,
                   child: Text('SIGN IN',style:
                    TextStyle(fontSize: 20,fontWeight:
                     FontWeight.bold,
                   color: cyandeg1),
                   ),
                   colorBrightness: Brightness.dark,
                 )
                 ),


                 ),
                 
                 Padding(
                   
                   padding:EdgeInsets.only(top: 130,left: 50),
                   child: FlatButton(
                   onPressed: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context)=>Signup()
              ));
              } ,
                   child: Text('SIGN UP',
                   style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                   color: cyandeg1),
                   ),
                   colorBrightness: Brightness.dark,
                 )
                 ),

               ],
             )
             ,
             
               Container(
                 
               padding: const EdgeInsets.symmetric(vertical : 30,horizontal: 30),
               child: Builder(
                 builder: (context)=>Form(
                   //key: _formkey,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
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
                               obscureText: true,
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
                             child: Icon(Icons.account_balance ,color: iconcolor,),
                           ),
                           
                          labelText: 'Company Name',
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
                       Container(
                         width: 250,
                         height: 70,
                           child: DropdownButton<String>(
                                
                                
                          value: dropdownValue,
                          iconDisabledColor:cyandeg2 ,
                          iconEnabledColor: cyandeg2,
                        elevation: 10,
                        style: TextStyle(
                        color:cyandeg2
                        ,fontSize: 17
                 ),
                 

                            underline: Container(
                              
                            height: 1,
                            color: bgcolor,
                          ),
                         onChanged: (String newValue) {
                                        setState(() {
                                        dropdownValue = newValue;
                                         });
                                  },
        items: <String>['Personal Use', 'For Business']
          .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          })
          .toList(),
      ),
                       )
 ,
      ButtonTheme(
                         minWidth: 250,
                         child: RaisedButton(
                           disabledColor: Colors.grey,
                           disabledTextColor: Colors.black,
                         onPressed: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context)=>Terms()
              ));
              },
                         color:bgcolor,
                         colorBrightness: Brightness.dark,
                         child: Text('Sign UP',
                         style: TextStyle(
                           fontSize: 25,
                           color: cyandeg2,
                           fontWeight: FontWeight.w500
                         ),
                         ),

                       ),
                       
                       ),

                       Padding(
                         padding: EdgeInsets.all(10),
                         child:  Text('________ or ________',
                         style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,
                         color: cyandeg2

                       ),
                       
                       ) ,
                       ),
                      ButtonTheme(
                         minWidth: 250,
                         child: RaisedButton(
                           onPressed: (){},
                           disabledColor: Colors.grey,
                           disabledTextColor: Colors.black,
              //            onPressed: (){
              //   Navigator.of(context).pop();
              //   Navigator.of(context).push(MaterialPageRoute(
              //   builder: (BuildContext context)=>//GOOGLE CHECK
              // ));
              // },
                         color:bgcolor,
                         colorBrightness: Brightness.dark,
                         child: Text('Sign Up With Google',
                         style: TextStyle(
                           fontSize: 20,
                           color: cyandeg2,
                           fontWeight: FontWeight.w500
                         ),
                         ),

                       ),
                       
                       ),
                     
                     ],

                   )
                 ,),
               ),

             ) ,
             
             


          
        ],

      ),

      
      ),
       
      
    ),
 
  //  ) singlescrollview
     
  );
  }
}



void signinbutton(){

}