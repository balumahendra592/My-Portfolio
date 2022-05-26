import 'package:flutter/material.dart';
import 'package:my_portfolio/route_generator.dart';

class NavigationItem extends StatelessWidget {

  final String title;
  final String routeName;
  final bool selected;
  final Function onHighlight;

  const NavigationItem({
    required this.title,
    required this.routeName,
    required this.selected,
    required this.onHighlight,
  });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        navKey.currentState!.pushNamed(routeName);
        onHighlight(routeName);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          title,
          style: TextStyle(fontSize: 20.0,color: Colors.white),
        ),
      ),
    );
  }
}