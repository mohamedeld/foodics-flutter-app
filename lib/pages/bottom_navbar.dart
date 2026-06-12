import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/pages/account_page.dart';
import 'package:fooddeliveryapp/pages/favorites_page.dart';
import 'package:fooddeliveryapp/pages/home_page.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  List<Widget> bodyOptions = [HomePage(), FavoritesPage(), AccountPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyOptions[_selectedIndex],
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Foodics - Food Delivery")),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
        ],
        currentIndex: _selectedIndex,
        onTap: (value) => {
          setState(() {
            _selectedIndex = value;
          }),
        },
        selectedItemColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
