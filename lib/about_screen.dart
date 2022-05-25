import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {

  Widget _body(){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        // height: height/2,
        width: width,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          // color: Colors.orangeAccent.withOpacity(0.5),
          // borderRadius: BorderRadius.circular(10),
          // border: Border.all(
          //   width: 2.0,
          //   color: Colors.white,
          // ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const Icon(
                //   Icons.play_arrow_rounded,
                //   color: Colors.red,
                // ),
                TyperAnimatedTextKit(
                  isRepeatingAnimation: true,
                  speed: const Duration(milliseconds: 50),
                  textStyle: TextStyle(
                      fontSize: height * 0.030,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                  text: const [
                    "Work Experience"
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "Skills:\n",
              style:TextStyle(
                color: Colors.orange,
                fontSize: height * 0.035,
              )
            ),
            Text(
                      "1. Flutter\n"
                      "2. mobile app deployment in both playstore and appstore\n"
                      "3. I have good experience in xcode to build ios application\n"
                      "4. flask api creations\n"
                      "5. keycloak\n"
                      "6. docker\n"
                      "7. nginx\n"
                      "8. Erpnext Framework\n"
                      "9. Elastic search\n",
              style:TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
            Text(
              "Work Experience:\n",
                style:TextStyle(
                  color: Colors.orange,
                  fontSize: height * 0.035,
                )
            ),
            Text(
                  "1. Flutter Developer in 'Entity Vibes'\n\n"
                  "2. Software Developer in 'Aiplex Software Private Limited'",
              style:TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                "Projects:\n",
                style:TextStyle(
                  color: Colors.orange,
                  fontSize: height * 0.035,
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    flex:50,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Web',style: TextStyle(color: Colors.white,fontSize: height * 0.025),),
                        GestureDetector(
                          onTap: ()async{
                            const url = 'https://capeforhealth.com';
                            if (await canLaunch(url)) {
                              await launch(url,
                              forceSafariVC: true,
                              enableJavaScript: true,);
                              } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child:Text('capeforhealth.com',style: TextStyle(color: Colors.blue,fontSize: height * 0.025),) ,
                        ),
                        Text('Mobile',style: TextStyle(color: Colors.white,fontSize: height * 0.025),),
                        GestureDetector(
                          child: Text('https://play.google.com/store/apps/details?id=cape.com.capeflutter',style: TextStyle(color: Colors.blue,fontSize: height * 0.025),),
                          onTap: ()async{
                            const url = 'https://play.google.com/store/apps/details?id=cape.com.capeflutter';
                            if (await canLaunch(url)) {
                              await launch(url,
                              forceSafariVC: true,
                              enableJavaScript: true,);
                              } else {
                              throw 'Could not launch $url';
                            }
                          },
                        ),
                        GestureDetector(
                          child: Text('https://play.google.com/store/apps/details?id=com.bernama.reporter',style: TextStyle(color: Colors.blue,fontSize: height * 0.025),),
                          onTap: ()async{
                            const url = 'https://play.google.com/store/apps/details?id=com.bernama.reporter';
                            if (await canLaunch(url)) {
                              await launch(url,
                              forceSafariVC: true,
                              enableJavaScript: true,);
                              } else {
                              throw 'Could not launch $url';
                            }
                          },
                        ),
                        GestureDetector(
                          child:Text('https://play.google.com/store/apps/details?id=com.petbiotech.petbiotech_app',style: TextStyle(color: Colors.blue,fontSize: height * 0.025),),
                          onTap: ()async{
                            const url = 'https://play.google.com/store/apps/details?id=com.petbiotech.petbiotech_app';
                            if (await canLaunch(url)) {
                              await launch(url,
                              forceSafariVC: true,
                              enableJavaScript: true,);
                              } else {
                              throw 'Could not launch $url';
                            }
                          },
                        )
                      ],
                    )
                ),
                Expanded(
                flex:50,
                    child:Container(
                      alignment: Alignment.bottomRight,
                      // height: height/2,
                      width: width,
                      child: Image.asset('assets/3.gif',fit: BoxFit.fitWidth,),
                    ),
                ),
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
      backgroundColor: Colors.black,
      appBar: AppBar(

          title: Text('Skills',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Stack(
          children: [
            Container(
              // color: Colors.black,
              child: Center(
                  child:_body()
              ),
            ),
          ],
        ),
      )
    );
  }
}
