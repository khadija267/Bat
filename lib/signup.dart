import 'package:flutter/material.dart';
import 'package:noiseplug/crud.dart';
import 'package:noiseplug/drawer/terms.dart';
import 'package:noiseplug/signin.dart';
import 'package:noiseplug/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
    String _plan = 'Personal Use';
    final  formState =GlobalKey<FormState>();
  String _email,_password,_phone,_name;
  CrudFire crud=CrudFire();
  addinfo(){
    if(formState.currentState.validate()){
      formState.currentState.save();
      crud.create({
        'Company Name':_name,
        'Email':_email,
        'Password':_password,
        'Phone Number':_phone,
        'Plan':_plan

      });

    }
  }
  Future<void> signup()async{
                       if(formState.currentState.validate()){
                       formState.currentState.save();
                         try{
                            AuthResult result =
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: _email, password: _password);
                        FirebaseUser fireuser = result.user ;
                      //  fireuser.sendEmailVerification();
                        addinfo();
                        Navigator.pushReplacement(context,MaterialPageRoute(
                          builder: (BuildContext context)=>Terms()));
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
                 Padding(
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
                   key: formState,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: <Widget>[
                       TextFormField(
                         validator: (val){
                           if(val.isEmpty){
                             return "please enter company name";
                           }
                           return null;
                         },
                         onSaved: (val)=>_name=val,

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
                                  validator: (val){
                           if(val.length<14){
                             return "please enter a valid number";
                           }
                           return null;
                         },
                         onSaved: (val)=>_phone=val,
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
                                
                                
                          value: _plan,
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
                                      _plan = newValue;
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
                         onPressed: signup,
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

