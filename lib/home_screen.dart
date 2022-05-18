import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/about_screen.dart';

import 'contact_screen.dart';

class HomeSreen extends StatefulWidget {
  @override
  _HomeSreenState createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {



  Widget _body(){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            child: Opacity(
              opacity: 0.9,
              child: Image.asset('assets/2.jpg', height: height),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.07, height * 0.12, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "HEY THERE! ",
                      style:TextStyle(
                          fontSize: height * 0.025,
                          color:  Colors.white,
                          fontWeight: FontWeight.w200),
                    ),
                    Image.asset(
                      "assets/hi.gif",
                      height: height * 0.03,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  "Bala Murali Krishna",
                  style: TextStyle(
                      fontSize: height * 0.055,
                      color:  Colors.white,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.1),
                ),
                Text(
                  "Regeti",
                  style: TextStyle(
                      color:Colors.white,
                      fontSize: height * 0.055,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.red,
                    ),
                    TyperAnimatedTextKit(
                      isRepeatingAnimation: true,
                      speed: const Duration(milliseconds: 50),
                      textStyle: TextStyle(
                          fontSize: height * 0.03,
                          color: Colors.white,
                          fontWeight: FontWeight.w200),
                      text: const [
                        " Flutter Developer",
                        " Flask ",
                        " Elastic Search",
                        " Erp Next Frame Work ",
                        " Docker ",
                        " Git ",
                        " Nginx "
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          title: Text('Home',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
      ),
      body: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Center(
            child: _body()
          ),
        ),
      ),
    );
  }
}
