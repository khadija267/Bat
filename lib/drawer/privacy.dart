import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:noiseplug/styles.dart';

class Privacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Color.fromARGB(255, 50, 76,82) 
        backgroundColor:bgcolor,
        title:  Text("Privacy Policy",
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
            child: Text("Privacy Policy",
            style:TextStyle(fontSize: 15 ,color: cyandeg1),
            textAlign:TextAlign.left,
          ),
          )
           ,
          ),
          Padding(padding: EdgeInsets.all(7,),
          child: Align(
            alignment: Alignment.centerLeft,
                        child: Text(" built the Bat app as a Freemium app. This SERVICE is provided by at no cost and is intended for use as is.This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Bat unless otherwise defined in this Privacy Policy. ",

            style:TextStyle(fontSize: 10 ,color: cyandeg2)
          ),
          ) ,
          ),
          Padding(padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Information Collection and Use",
            style:TextStyle(fontSize: 15 ,color: cyandeg1)
          ),
          ) ,
          ),
                      Padding(padding: EdgeInsets.all(7),
          child: Align(
            alignment: Alignment.centerLeft,
            child:Linkify(
              onOpen: _onOpen,
            text:" For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way.The app does use third party services that may collect information used to identify you.Link to privacy policy of third party service providers used by the app https://policies.google.com/privacy ",
            linkStyle: TextStyle(fontSize: 13 ,color: cyandeg1),
            style:TextStyle(fontSize: 10 ,color: cyandeg2)
          ),
        ),
      ),
            Padding(padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Log Data",
            style:TextStyle(fontSize: 15 ,color: cyandeg1)
          ),
          ) ,
          ),
             Padding(padding: EdgeInsets.all(7),
          child: Align(
            alignment: Alignment.centerLeft,
                        child: Text("[I/We] want to inform you that whenever you use [my/our] Service, in a case of an error in the app [I/We] collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing [my/our] Service, the time and date of your use of the Service, and other statistics.",

            style:TextStyle(fontSize: 10 ,color: cyandeg2)
          ),
          ) ,
          ),
          Padding(padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Cookies",
            style:TextStyle(fontSize: 15 ,color: cyandeg1)
          ),
          ) ,
          ),
          Padding(padding: EdgeInsets.all(7),
          child: Align(
            alignment: Alignment.centerLeft,
                        child: Text(" Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.This Service does not use these “cookies” explicitly. However, the app may use third party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service. ",

            style:TextStyle(fontSize: 10 ,color: cyandeg2)
          ),
          ) ,
          ),
          Padding(padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Service Providers",
            style:TextStyle(fontSize: 15 ,color: cyandeg1)
          ),
          ) ,
          ),
          Padding(padding: EdgeInsets.all(7),
          child: Align(
            alignment: Alignment.centerLeft,
                       child: Text("You acknowledge that you have read this Agreement and agree to all its terms and conditions. By using the Mobile Application or its Services you agree to be bound by this Agreement. If you do not agree to abide by the terms of this Agreement, you are not authorized to use or access the Mobile Application and its Services.",

            style:TextStyle(fontSize: 10 ,color:cyandeg2)
          ),
          ) ,
          ),
           Padding(padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Security",
            style:TextStyle(fontSize: 15 ,color: cyandeg1)
          ),
          ) ,
          ),
          Padding(padding: EdgeInsets.all(7),
          child: Align(
            alignment: Alignment.centerLeft,
                       child: Text("I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security. ",

            style:TextStyle(fontSize: 10 ,color: cyandeg2)
          ),
          ) ,
          ),
           Padding(padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Links to Other Sites",
            style:TextStyle(fontSize: 15 ,color: cyandeg1)
          ),
          ) ,
          ),
          Padding(padding: EdgeInsets.all(7),
          child: Align(
            alignment: Alignment.centerLeft,
                        child: Text("I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security. ",

            style:TextStyle(fontSize: 10 ,color: cyandeg2)
          ),
          ) ,
          ),
           Padding(padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Security",
            style:TextStyle(fontSize: 15 ,color: cyandeg1)
          ),
          ) ,
          ),
          Padding(padding: EdgeInsets.all(7),
          child: Align(
            alignment: Alignment.centerLeft,
                                   child: Text("This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services. ",


            style:TextStyle(fontSize: 10 ,color: cyandeg2)
          ),
          ) ,
          ),
           Padding(padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Children’s Privacy",
            style:TextStyle(fontSize: 15 ,color: cyandeg1)
          ),
          ) ,
          ),
          Padding(padding: EdgeInsets.all(7),
          child: Align(
            alignment: Alignment.centerLeft,
                                  child: Text(" These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do necessary actions. ",


            style:TextStyle(fontSize: 10 ,color: cyandeg2)
          ),
          ) ,
          ),
Padding(padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Changes to This Privacy Policy",
            style:TextStyle(fontSize: 15 ,color: cyandeg1)
          ),
          ) ,
          ),
          Padding(padding: EdgeInsets.all(7),
          child: Align(
            alignment: Alignment.centerLeft,
                                              child: Text("I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately after they are posted on this page. ",

            style:TextStyle(fontSize: 10 ,color: cyandeg2)
          ),
          ) ,
          ),
 Padding(padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Contact Us",
            style:TextStyle(fontSize: 15 ,color: cyandeg1)
          ),
          ) ,
          ),
            Padding(padding: EdgeInsets.all(7),
          child: Align(
            alignment: Alignment.centerLeft,
                        child: Text("If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at khadiga267@gmail.com",

            style:TextStyle(fontSize: 10 ,color: cyandeg2)
          ),
          ) ,
          ),
                     

          

        ],
        
      ),
      )
      
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