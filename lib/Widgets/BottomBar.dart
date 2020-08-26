import 'package:apps_ecom/Providers/Models/Cart.dart';
import 'package:apps_ecom/Screens/Cart_Screen.dart';
import 'package:apps_ecom/Screens/Favoris.dart';
import 'package:apps_ecom/Screens/Home_Screen.dart';
import 'package:apps_ecom/Screens/Search_Screen.dart';
import 'package:apps_ecom/Widgets/badge.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    CartScreen(),
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
            FloatingNavbarItem(
                icon: 
                  Icons.home,
                  //color: (_index == 0) ? Colors.white : Colors.black,
                title: ''),
            FloatingNavbarItem(
                icon: Icon(
                  Icons.search,
                  color: (_index == 1) ? Colors.white : Colors.black,
                ),
                title: ''),
            FloatingNavbarItem(
                icon: Icon(
                  Icons.add_a_photo,
                  color: (_index == 2) ? Colors.white : Colors.black,
                ),
                title: ''),
            FloatingNavbarItem(
                icon: Icon(
                  Icons.favorite,
                  color: (_index == 3) ? Colors.white : Colors.black,
                ),
                title: ''),
            FloatingNavbarItem(
              icon: Consumer<Cart>(
                builder: (BuildContext context, cartData, ch) => Badge(
                  child: ch,
                  value: cartData.itemCount.toString(),
                  color: Colors.black,
                ),
                child: Icon(
                  Icons.card_travel,
                  color: (_index == 4) ? Colors.white : Colors.black,
                ),
              ),
              title: '',
            ),
          ],
        ),
      ),
    );
  }
}
