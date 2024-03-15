import 'package:flutter/material.dart';
import 'package:grosseryapp/res/static/app_colors.dart';
import 'package:grosseryapp/view/home/cartscreen.dart';
import 'package:grosseryapp/view/home/homescreen.dart';
import 'package:grosseryapp/view/home/shopscreen.dart';
import 'package:grosseryapp/view/home/storescreen.dart';
import 'package:grosseryapp/view/profiletabscreens/profilescreen.dart';

class BottomNevBarScreen extends StatefulWidget {
  const BottomNevBarScreen({super.key});

  @override
  State<BottomNevBarScreen> createState() => _BottomNevBarScreenState();
}

class _BottomNevBarScreenState extends State<BottomNevBarScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ShopScreen(),
    StoreScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.storefront_sharp,
            ),
            label: 'Shop ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on_outlined,
            ),
            label: 'Stores',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_basket_outlined,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
            ),
            label: 'Profile',
          ),
        ],
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        unselectedItemColor: AppColors.blackcolor,
        // unselectedLabelStyle: TextStyle(color: AppColors.blackcolor),
        // unselectedIconTheme: IconThemeData(color: AppColors.blackcolor),
        selectedItemColor: AppColors.greencolor,
        onTap: _onItemTapped,
      ),
    );
  }
}
