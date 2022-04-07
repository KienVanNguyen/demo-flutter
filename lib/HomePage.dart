
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:demofutter/CartActivity.dart';
import 'package:demofutter/HomeActivity.dart';
import 'package:demofutter/FeedActivity.dart';
import 'package:demofutter/UserActivity.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class MyNevBar extends StatefulWidget {
  @override
  _MyNevBarState createState() => _MyNevBarState();
}

class _MyNevBarState extends State<MyNevBar>
{
  int currentIndex = 0;

  List listOfColors = [
    Container(
      child: HomeActivity(),
    ),
    Container(
      child: FeedActivity(),
    ),
    Container(
      child: CardActivity2(products: fetchProducts()),
    ),
    Container(
      color: Colors.cyanAccent,
      child: Text("Yêu thích"),
    ),
    Container(
      child: UserActivity(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfColors[currentIndex],

      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(LineIcons.home),
            title: Text('Trang chủ'),
          ),
          BottomNavyBarItem(
            icon: Icon(LineIcons.newspaper),
            title: Text('Bảng tin'),
          ),
          BottomNavyBarItem(
            icon: Icon(LineIcons.shoppingCart),
            title: Text('Giỏ hàng'),
          ),
          BottomNavyBarItem(
            icon: Icon(LineIcons.heart),
            title: Text('Yêu thích'),
          ),
          BottomNavyBarItem(
            icon: Icon(LineIcons.user),
            title: Text('Người dùng'),
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}