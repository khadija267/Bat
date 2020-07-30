import 'package:flutter/material.dart';
import 'package:noiseplug/signin.dart';
import 'package:noiseplug/start.dart';
import 'package:noiseplug/styles.dart';
class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Color.fromARGB(255, 50, 76,82) 
        backgroundColor:bgcolor,
        title:  Text("Terms and Conditions",
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
      child:SingleChildScrollView(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(padding: EdgeInsets.all(10),
          child:Align(
            alignment: Alignment.centerLeft,
            child: Text("Terms and conditions",
            style:TextStyle(fontSize: 15 ,color: cyandeg1),
            textAlign:TextAlign.left,
          ),
          )
           ,
          ),
          Padding(padding: EdgeInsets.all(7,),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("These terms and conditions (Terms, Agreement) are an agreement between Mobile Application Developer (Mobile Application Developer, us, we or our) and you (User, you or your). This Agreement sets forth the general terms and conditions of your use of the Bat mobile application and any of its products or services (collectively, Mobile Application or Services)",
            style:TextStyle(fontSize: 10 ,color: cyandeg2)
          ),
          ) ,
          ),
          Padding(padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Accounts and membership",
            style:TextStyle(fontSize: 15 ,color: cyandeg1)
          ),
          ) ,
          ),
           Padding(padding: EdgeInsets.all(7),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("If you create an account in the Mobile Application, you are responsible for maintaining the security of your account and you are fully responsible for all activities that occur under the account and any other actions taken in connection with it. We may, but have no obligation to, monitor and review new accounts before you may sign in and use our Services. Providing false contact information of any kind may result in the termination of your account. You must immediately notify us of any unauthorized uses of your account or any other breaches of security. We will not be liable for any acts or omissions by you, including any damages of any kind incurred as a result of such acts or omissions. We may suspend, disable, or delete your account (or any part thereof) if we determine that you have violated any provision of this Agreement or that your conduct or content would tend to damage our reputation and goodwill. If we delete your account for the foregoing reasons, you may not re-register for our Services. We may block your email address and Internet protocol address to prevent further registration.",
            style:TextStyle(fontSize: 10 ,color: cyandeg2)
          ),
          ) ,
          ),
            Padding(padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Backups",
            style:TextStyle(fontSize: 15 ,color: cyandeg1)
          ),
          ) ,
          ),
             Padding(padding: EdgeInsets.all(7),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("We are not responsible for Content residing in the Mobile Application. In no event shall we be held liable for any loss of any Content. It is your sole responsibility to maintain appropriate backup of your Content. Notwithstanding the foregoing, on some occasions and in certain circumstances, with absolutely no obligation, we may be able to restore some or all of your data that has been deleted as of a certain date and time when we may have backed up data for our own purposes. We make no guarantee that the data you need will be available.",
            style:TextStyle(fontSize: 10 ,color: cyandeg2)
          ),
          ) ,
          ),
          Padding(padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Links to other mobile applications",
            style:TextStyle(fontSize: 15 ,color: cyandeg1)
          ),
          ) ,
          ),
          Padding(padding: EdgeInsets.all(7),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Although this Mobile Application may link to other mobile applications, we are not, directly or indirectly, implying any approval, association, sponsorship, endorsement, or affiliation with any linked mobile application, unless specifically stated herein. We are not responsible for examining or evaluating, and we do not warrant the offerings of, any businesses or individuals or the content of their mobile applications. We do not assume any responsibility or liability for the actions, products, services, and content of any other third-parties. You should carefully review the legal statements and other conditions of use of any mobile application which you access through a link from this Mobile Application. Your linking to any other off-site mobile applications is at your own risk.",
            style:TextStyle(fontSize: 10 ,color: cyandeg2)
          ),
          ) ,
          ),
          Padding(padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Changes and amendments",
            style:TextStyle(fontSize: 15 ,color: cyandeg1)
          ),
          ) ,
          ),
          Padding(padding: EdgeInsets.all(7),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("We reserve the right to modify this Agreement or its policies relating to the Mobile Application or Services at any time, effective upon posting of an updated version of this Agreement in the Mobile Application. When we do, we will post a notification in our Mobile Application. Continued use of the Mobile Application after any such changes shall constitute your consent to such changes. Policy was created with WebsitePolicies.",
            style:TextStyle(fontSize: 10 ,color:cyandeg2)
          ),
          ) ,
          ),
           Padding(padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Acceptance of these terms",
            style:TextStyle(fontSize: 15 ,color: cyandeg1)
          ),
          ) ,
          ),
          Padding(padding: EdgeInsets.all(7),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("You acknowledge that you have read this Agreement and agree to all its terms and conditions. By using the Mobile Application or its Services you agree to be bound by this Agreement. If you do not agree to abide by the terms of this Agreement, you are not authorized to use or access the Mobile Application and its Services.",
            style:TextStyle(fontSize: 10 ,color: cyandeg2)
          ),
          ) ,
          ),
           Padding(padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Contacting us",
            style:TextStyle(fontSize: 15 ,color: cyandeg1)
          ),
          ) ,
          ),
          Padding(padding: EdgeInsets.all(7),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("If you would like to contact us to understand more about this Agreement or wish to contact us concerning any matter relating to it, you may send an email to khadiga267@gmail.com",
            style:TextStyle(fontSize: 10 ,color: cyandeg2)
          ),
          ) ,
          ),
            Padding(padding: EdgeInsets.all(7),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("This document was last updated on February 18, 2020",
            style:TextStyle(fontSize: 10 ,color: cyandeg2)
          ),
          ) ,
          ),
                       Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[
                 InkWell(
                   child: Padding(
                   padding:EdgeInsets.only(top: 30,left: 10,bottom: 30),
                   child:ButtonTheme(
                         minWidth: 50,
                         
                         child: RaisedButton(
                           shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(18.0),
        
),
                           disabledColor: Colors.grey,
                           disabledTextColor: Colors.black,
  onPressed: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context)=>Signin()
              ));
              },                         color: bgcolor,
                         colorBrightness: Brightness.dark,
                         child: 
                          Text('Deny',
                         style: TextStyle(
                           fontSize: 20,
                           color: Colors.grey[300],
                           fontWeight: FontWeight.w300
                         ),
                         ),
                        

                       ),
                       
                       ),
                    
                 ),


                 ),
                 
                 Padding(
                   
                   padding:EdgeInsets.only(top: 30,left: 50,bottom: 30),
                   child:ButtonTheme(
                         minWidth: 50,
                         child: RaisedButton(
                              shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(18.0),
        
),
                           disabledColor: Colors.grey,
                           disabledTextColor: Colors.black,
                         onPressed: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context)=>Start()
              ));
              } ,
                         color: bgcolor,
                         colorBrightness: Brightness.dark,
                         child: 
                          Text('Accept',
                         style: TextStyle(
                           fontSize: 20,
                           color: cyandeg2,
                           fontWeight: FontWeight.w300
                         ),
                         ),
                        

                       ),
                       
                       ),
                   
                 ),

               ],
             )
          
         
          

          

        ],
        
      ),
      )
      
      ),
      
      );
  }
}