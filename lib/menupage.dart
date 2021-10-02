import 'dart:ui';
import 'package:book_grocer/search_page.dart';
import 'package:book_grocer/wishlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bottom_navigation.dart';

class MyMenuPage extends StatefulWidget {
  @override
  _MyMenuPageState createState() => _MyMenuPageState();
}

class _MyMenuPageState extends State<MyMenuPage> {
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;
  final List _children = [
    BottomNavigator(),
    SearchPage(),
    WishListPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _children[_currentIndex],
        //
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          backgroundColor: Color(0xff5ABD8C),
          selectedItemColor: Colors.white,
          currentIndex: _currentIndex,
          // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              label: ('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.search),
              label: ('search'),
            ),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: ('Wishlist'))
          ],
        ),
      ),
    );
  }
}
