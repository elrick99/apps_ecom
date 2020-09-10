import 'package:apps_ecom/Providers/Models/Boutique.dart';
import 'package:apps_ecom/Providers/Models/Cart.dart';
import 'package:apps_ecom/Providers/Services/Boutiques.dart';
import 'package:apps_ecom/Screens/BackEnd/Article_List_Admin.dart';
import 'package:apps_ecom/Screens/BackEnd/Home_Admin.dart';
import 'package:apps_ecom/Screens/BackEnd/Ajout_Article.dart';
import 'package:apps_ecom/Screens/Cart_Screen.dart';
import 'package:apps_ecom/Screens/Favoris.dart';
import 'package:apps_ecom/Screens/Home_Screen.dart';
import 'package:apps_ecom/Screens/Search_Screen.dart';
import 'package:apps_ecom/Widgets/badge.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomBarAdmin extends StatefulWidget {
  final FirebaseUser user;
  final Boutique boutique;

  BottomBarAdmin({Key key, this.user, this.boutique}) : super(key: key);
  @override
  _BottomBarAdminState createState() => _BottomBarAdminState();
}

class _BottomBarAdminState extends State<BottomBarAdmin> {
  List<Widget> generatePage(FirebaseUser myUser, Boutique myBoutique) {
    return [
      HomeAdmin(
        user: myUser,
        boutique: myBoutique,
      ),
      ArticleListAdmin(
        user: myUser,
        boutique: myBoutique,
      ),
      Text("Text 3"),
      Text("Text 4"),
      Photo(
        user: myUser,
        boutique: myBoutique,
      ),
    ];
  }

  int _index = 0;
  @override
  Widget build(BuildContext context) {
    // print('Boutiqute');
    // print(widget.boutique.description);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFf9f9f9),
        extendBody: true,
        body: generatePage(widget.user, widget.boutique)[_index],
        bottomNavigationBar: FloatingNavbar(
          backgroundColor: Colors.white,
          selectedBackgroundColor: Color(0xff562fbe),
          selectedItemColor: Colors.white,
          unselectedItemColor: Color(0xff292929),
          onTap: (int val) => setState(() => _index = val),
          currentIndex: _index,
          items: [
            FloatingNavbarItem(
                icon: Icon(
                  Icons.home,
                  color: (_index == 0) ? Colors.white : Colors.black,
                ),
                title: ''),
            FloatingNavbarItem(
                icon: Icon(
                  Icons.archive,
                  color: (_index == 1) ? Colors.white : Colors.black,
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
                  Icons.notifications,
                  color: (_index == 2) ? Colors.white : Colors.black,
                ),
              ),
              title: '',
            ),
            FloatingNavbarItem(
                icon: Icon(
                  Icons.account_circle,
                  color: (_index == 3) ? Colors.white : Colors.black,
                ),
                title: ''),
            FloatingNavbarItem(
                icon: Icon(
                  Icons.add_a_photo,
                  color: (_index == 4) ? Colors.white : Colors.black,
                ),
                title: ''),
          ],
        ),
      ),
    );
  }
}
