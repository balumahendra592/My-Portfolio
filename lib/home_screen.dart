import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/about_screen.dart';
import 'package:url_launcher/url_launcher.dart';

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
          Container(
          height: height,
          width: width,



            child: Image.asset('assets/2.jpg',fit: BoxFit.cover,),
          ),
          Row(
            children: [
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
                    SizedBox(
                      height: height * 0.20,
                    ),
                    kIsWeb?Text(''):ElevatedButton(
                        onPressed: () async{
                          const url = 'https://github.com/balumahendra592/balumahendra592/raw/main/BALA-MURALI-KRISHNA-REGETI(1).pdf';
                          if (await canLaunch(url)) {
                            await launch(url,
                              forceSafariVC: true,
                              forceWebView: true,
                              enableJavaScript: true,);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.cloudDownloadAlt,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: width *0.02,
                            ),
                            Text('Download Resume'),

                          ],
                        )
                    )
                  ],
                ),
              ),
              // Container(
              //   // alignment: Alignment.topRight,
              //   // height: height  ,
              //   // width: width,
              //   color: Colors.transparent,
              //   child: ElevatedButton(
              //       onPressed: () async{
              //         const url = 'https://github.com/balumahendra592/balumahendra592/raw/main/BALA-MURALI-KRISHNA-REGETI(1).pdf';
              //         if (await canLaunch(url)) {
              //           await launch(url,
              //             forceSafariVC: true,
              //             forceWebView: true,
              //             enableJavaScript: true,);
              //         } else {
              //           throw 'Could not launch $url';
              //         }
              //       },
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: [
              //           Text('Download Resume'),
              //           // Icon(
              //           //   FontAwesomeIcons.download,
              //           //   color: Colors.white,
              //           // )
              //         ],
              //       )
              //   )
              // ),
            ],
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Text('hi'),
      // appBar: AppBar(
      //
      //     title: Text('Home',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
      // ),
      body: Container(
        color: Colors.black,
        child: Center(
          // child: Text('hi'),
            child: _body()
        ),
      ),
    );
  }
}
