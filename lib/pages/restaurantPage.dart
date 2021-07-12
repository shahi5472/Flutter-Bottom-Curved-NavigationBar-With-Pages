import 'package:flutter/material.dart';

class Restaurant extends StatefulWidget {
  @override
  _RestaurantState createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Restaurant Page',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
