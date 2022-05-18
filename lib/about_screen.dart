import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                    "About Me"
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
