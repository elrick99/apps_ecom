import 'package:apps_ecom/Screens/Favoris.dart';
import 'package:apps_ecom/Screens/Home_Screen.dart';
import 'package:apps_ecom/Screens/Search_Screen.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Widget> page = [
    HomeScreen(),
    SearchBar(),
    Text("Text 3"),
    Favoris(),
    Text('Text 5'),
  ];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFf9f9f9),
        extendBody: true,
        body: page[_index],
        bottomNavigationBar: FloatingNavbar(
          backgroundColor: Colors.white,
          selectedBackgroundColor: Color(0xFFee7b77),
          selectedItemColor: Colors.white,
          unselectedItemColor: Color(0xff292929),
          onTap: (int val) => setState(() => _index = val),
          currentIndex: _index,
          items: [
            FloatingNavbarItem(icon: Icons.home, title: ''),
            FloatingNavbarItem(icon: Icons.search, title: ''),
            FloatingNavbarItem(icon: Icons.add_a_photo, title: ''),
            FloatingNavbarItem(icon: Icons.favorite, title: ''),
            FloatingNavbarItem(icon: Icons.card_travel, title: ''),
          ],
        ),
      ),
    );
  }
}
