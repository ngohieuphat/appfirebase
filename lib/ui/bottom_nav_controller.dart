import 'package:ecommerceapp/const/appcolors.dart';
import 'package:ecommerceapp/ui/bottom_nav_pages/cart.dart';
import 'package:ecommerceapp/ui/bottom_nav_pages/favourite.dart';
import 'package:ecommerceapp/ui/bottom_nav_pages/home.dart';
import 'package:ecommerceapp/ui/bottom_nav_pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavController extends StatefulWidget {
  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [
    Home(),
    Favourite(),
    Cart(),
    Profile(),
  ];
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Demo",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false, // <-- HERE
        showUnselectedLabels: false,
        elevation: 5,
        selectedItemColor: AppColors.deep_orange,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        selectedLabelStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ("Home"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: ("Favourite")),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: ("Cart"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ("Person"),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            print(_currentIndex);
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
