import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fooddeliveryapp/pages/account_page.dart';
import 'package:fooddeliveryapp/pages/favorites_page.dart';
import 'package:fooddeliveryapp/pages/home_page.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar>
    with WidgetsBindingObserver {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    debugPrint(state.toString());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  List<Widget> bodyOptions = [HomePage(), FavoritesPage(), AccountPage()];
  @override
  Widget build(BuildContext context) {
    final PreferredSizeWidget? appBar;
    if (Platform.isAndroid) {
      appBar = AppBar(title: const Text("Foodics - Food Delivery"));
    } else if (Platform.isIOS) {
      appBar = CupertinoNavigationBar(
        middle: Text("Foodics - Food Delivery"),
        leading: Drawer(),
      );
    } else {
      appBar = null;
    }
    return SafeArea(
      child: Scaffold(
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
      ),
    );
  }
}
