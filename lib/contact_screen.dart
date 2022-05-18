// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {

  String _capeContactUs = 'assets/contact_us_cape.png';
  String google_url = "www.google.com";

  _launchEmail() async {
    launch(
        google_url);
  }

  Container contactUsCard() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      // height: 150,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // gradient: LinearGradient(
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        //   colors: [
        //     Colors.teal.shade800,
        //     Colors.teal.shade400,
        //     Colors.teal.shade800,
        //     Colors.teal.shade400,
        //   ],
        // ),
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Icon(
                FontAwesomeIcons.instagram,
                color: Colors.pinkAccent,
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text('instagram.com/balumahendra592',style: TextStyle(color: Colors.blue,fontSize: height * 0.025),),
            ],
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Row(
            children: <Widget>[
              Icon(
                FontAwesomeIcons.twitter,
                color: Colors.blueAccent,
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text('twitter.com/regetibalamura1',style: TextStyle(color: Colors.blue,fontSize: height * 0.025),),
            ],
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Row(
            children: <Widget>[
              Icon(
                FontAwesomeIcons.facebook,
                color: Colors.blue,
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text('facebook.com/mahendra.badly',style: TextStyle(color: Colors.blue,fontSize: height * 0.025),),
            ],
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Row(
            children: <Widget>[
              Icon(
                FontAwesomeIcons.google,
                color: Colors.red,
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              // InkWell(
              //   onTap:  _launchEmail(),
              //   child: Text('Open email',style: TextStyle(
              //       color: Colors.white
              //   ),),
              // ),
              Text(' balumahendra592@gmail.com',style: TextStyle(color: Colors.blue,fontSize: height * 0.025),),
            ],
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Row(
            children: <Widget>[
              Icon(
                FontAwesomeIcons.github,
                color: Colors.orange,
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text('github.com/balumahendra592',style: TextStyle(color: Colors.blue,fontSize: height * 0.025),),
            ],
          ),
        ],
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(

          title: Text('About',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Container(
          // height: height,
          // width: width,
          // color: Colors.black,
          child: Column(
            children: [
                Text(
                "\nGet in Touch",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: height * 0.030,
                  color: Colors.white,
                ),
              ),
              Text(
              "Let's build something together :)\n\n",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: height * 0.035,
                  color: Colors.white,
                ),
              ),
              contactUsCard()
              // const CustomSectionSubHeading(
              //     text:),
            ],
          ),
        ),
      ),
    );
  }
}
