import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {
  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
    ;
  }
}
