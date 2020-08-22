import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:apps_ecom/Providers/Services/Categories.dart';
import 'package:apps_ecom/Providers/Services/Products.dart';
import 'package:apps_ecom/Providers/Services/SousCategories.dart';
import 'package:apps_ecom/Screens/Commandes_Screen.dart';
import 'package:apps_ecom/Screens/Details_Screen.dart';
import 'package:apps_ecom/Screens/Discussions_Screen.dart';
import 'package:apps_ecom/Screens/Favoris.dart';
import 'package:apps_ecom/Screens/Notifications_Screen.dart';
import 'package:apps_ecom/Screens/Profil_Screen.dart';
import 'package:apps_ecom/Screens/Search_Screen.dart';
import 'package:apps_ecom/Widgets/Article_Home.dart';
import 'package:apps_ecom/Widgets/BottomBar.dart';
import 'package:flutter/material.dart';
import 'Screens/Home_Screen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Categories(),
        ),
        ChangeNotifierProvider.value(
          value: SousCategories(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        themeMode: ThemeMode.system,
        theme: ThemeData(
          iconTheme: IconThemeData(
            color: Color(0xFFee7b77),
          ),
          appBarTheme: AppBarTheme(
            color: Colors.white,
          ),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BottomBar(),
        // home: SearchBar(),
        routes: {
          '/detail': (context) => DetailsScreen(),
          '/profil': (context) => ProfilScreen()
        },
      ),
    );
  }
}
