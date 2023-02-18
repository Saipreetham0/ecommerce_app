import 'package:ecommerce_app/scr/features/core/screens/home/main_screen.dart';
import 'package:ecommerce_app/scr/features/core/screens/profile/profile_screen.dart';
import 'package:ecommerce_app/scr/features/core/screens/search/search_screen.dart';
import 'package:ecommerce_app/scr/features/core/screens/whistlist/whistlist_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    mainScreen(),
    searchScreen(),
    WhistlistScreen(),
    ProfileScreen()
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        selectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}
