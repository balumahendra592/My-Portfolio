import 'package:flutter/material.dart';
import 'package:my_portfolio/about_screen.dart';
import 'package:my_portfolio/contact_screen.dart';
import 'package:my_portfolio/home_screen.dart';


const String routeHome = '/';
const String routeAbout = '/about';
const String routeContacts = '/contacts';

final navKey = new GlobalKey<NavigatorState>();

class RouteGenerator {
  static Route<dynamic> ?generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomeSreen());
        break;
      case routeAbout:
        return MaterialPageRoute(builder: (_) => AboutScreen());
        break;
      case routeContacts:
        return MaterialPageRoute(builder: (_) => ContactScreen());
        break;
    }
  }
}