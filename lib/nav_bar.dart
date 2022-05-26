import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/route_generator.dart';
import 'package:url_launcher/url_launcher.dart';

import 'nav_item.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.blue,
      height: height*0.095,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          CircleAvatar(
            maxRadius: 30,
            backgroundImage: AssetImage('assets/2.jpg'),
          ),
          Spacer(),
          NavigationItem(
            selected: index == 0,
            title: 'Home',
            routeName: routeHome,
            onHighlight: onHighlight,
          ),
          NavigationItem(
            selected: index == 1,
            title: 'About',
            routeName: routeAbout,
            onHighlight: onHighlight,
          ),
          NavigationItem(
            selected: index == 2,
            title: 'Contact',
            routeName: routeContacts,
            onHighlight: onHighlight,
          ),
          GestureDetector(
              onTap: () async{
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
    );
  }

  void onHighlight(String route) {
    switch (route) {
      case routeHome:
        changeHighlight(0);
        break;
      case routeAbout:
        changeHighlight(1);
        break;
      case routeContacts:
        changeHighlight(2);
        break;
    }
  }

  void changeHighlight(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }
}