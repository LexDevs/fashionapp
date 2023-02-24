// ignore_for_file: prefer_final_fields, prefer_const_constructors, unnecessary_import, avoid_print, duplicate_ignore

import 'package:fashionapp/screens/checkout_screen.dart';
import 'package:fashionapp/screens/favorite_screen.dart';
import 'package:fashionapp/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int selectedIndex = 0;

  List<Widget> _screens = [
    HomeScreen(),
    FavoriteScreen(),
    CheckoutScreen(),
  ];

  void updateMenuIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
    print(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/menu.png',
          height: 40.0,
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/search.png'),
          ),
        ],
      ),
      body: _screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        onTap: updateMenuIndex,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
              // ignore: prefer_const_constructors
              icon: Icon(Icons.favorite_border),
              label: 'Favorite'),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
              // ignore: prefer_const_constructors
              icon: Icon(Icons.check_circle_outline),
              label: 'Checkout'),
        ],
      ),
    );
  }
}
