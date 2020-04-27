import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluttercurvednavigatiobar/pages/cartPage.dart';
import 'package:fluttercurvednavigatiobar/pages/favoritePage.dart';
import 'package:fluttercurvednavigatiobar/pages/restaurantPage.dart';
import 'package:fluttercurvednavigatiobar/pages/settingsPage.dart';

import 'mainHomePage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget showPage = MainHomePage();

  List<Widget> pageList = [
    MainHomePage(),
    CartPage(),
    Restaurant(),
    FavoritePage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curved Navigation'),
      ),
      body: Container(
        child: showPage,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        color: Colors.blue,
        onTap: (index) {
          setState(() {
            showPage = pageList[index];
          });
        },
        //buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          Icon(
            Icons.restaurant,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
