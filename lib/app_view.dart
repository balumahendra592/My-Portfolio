import 'package:flutter/material.dart';

import 'nav_bar.dart';


class AppView extends StatefulWidget {
  final child;

  const AppView({required this.child});

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Text('hihihihihi'),
          NavigationBar(), Expanded(child: widget.child)],
      ),
    );
  }
}