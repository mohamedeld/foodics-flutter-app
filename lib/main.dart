import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/pages/account_page.dart';
import 'package:fooddeliveryapp/pages/bottom_navbar.dart';
import 'package:fooddeliveryapp/pages/favorites_page.dart';
import 'package:fooddeliveryapp/pages/food_details_page.dart';
import 'package:fooddeliveryapp/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(
        fontFamily: 'OpenSans',
        primaryColor: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        textTheme: TextTheme(),
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BottomNavbar(),
      routes: {
        FoodDetailsPage.routeName: (context) => FoodDetailsPage(),
        'favorites': (context) => FavoritesPage(),
        '/account': (context) => AccountPage(),
      },
    );
  }
}
