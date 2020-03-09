import 'package:flutter/material.dart';
import 'package:noiseplug/start.dart';
import 'package:noiseplug/styles.dart';
import 'package:noiseplug/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final  formState =GlobalKey<FormState>();
  String _email,_password;
  Future<void> login()async{
                       if(formState.currentState.validate()){
                       formState.currentState.save();
                         try{
                            AuthResult result =
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: _email, password: _password);
                        FirebaseUser fireuser = result.user ;
                        Navigator.pushReplacement(context,MaterialPageRoute(
                          builder: (BuildContext context)=>Start()));
                         }
                         catch(e){
                           print(e.message);
                         }
                  }
                
              }
  @override
  
  
  Widget build(BuildContext context) {
    return Scaffold(
    //resizeToAvoidBottomPadding: true,
    //resizeToAvoidBottomInset: false,
    body:
     Container(
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

      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height
      ,
      //LOGO INSTEAD ==>
     // color: bgcolor,
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage("images/bg.jpg"),
      //     fit: BoxFit.fill,
          
      //   )
        
      // ),
      child:SingleChildScrollView(
        child: Column(
        children: <Widget>[
        
          Padding(
               padding: EdgeInsets.only(top: 70),
               child: Container(
                        child: Image.asset(
                          'images/logo.png',
                         height: 260.0,
                          fit: BoxFit.cover,
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
                   color:cyandeg1),
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
                   key: formState,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: <Widget>[
                       TextFormField(
                         validator: (val){
                           if(val.isEmpty){
                             return "please enter your email";
                           }
                           return null;
                         },
                         onSaved: (val)=>_email=val,
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
               validator: (val){
                           if(val.isEmpty){
                             return "please enter your password";
                           }
                           else if(val.length<8){
                             return "at least 8 chars";
                           }
                           return null;
                         },
                         onSaved: (val)=>_password=val,
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
                             child: Icon(Icons.vpn_key,color: iconcolor,),
                           ),
                           
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: cyandeg2,
                            
                          ),

                          ),
               //key: key,
                       ),

                       ButtonTheme(
                         minWidth: 250,
                         child: RaisedButton(
                           disabledColor: Colors.grey,
                           disabledTextColor: Colors.black,
                         onPressed: login,
                         color:bgcolor,
                         colorBrightness: Brightness.dark,
                         child: Text('Sign In',
                         style: TextStyle(
                           fontSize: 25,
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
