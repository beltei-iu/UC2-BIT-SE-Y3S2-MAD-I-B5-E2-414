import 'package:flutter/material.dart';
import 'package:mad/screen/account_screen.dart';
import 'package:mad/screen/favourite_screen.dart';
import 'package:mad/screen/home_screen.dart';
import 'package:mad/screen/notification_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final screenList = [
    HomeScreen(),
    FavouriteScreen(),
    NotificationScreen(),
    AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final navBarItems = [
      BottomNavigationBarItem(
          icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.blue),
      BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
      BottomNavigationBarItem(
          icon: Icon(Icons.notifications), label: 'Notification'),
      BottomNavigationBarItem(
          icon: Icon(Icons.account_circle), label: 'Account'),
    ];

    final navBar = BottomNavigationBar(
      items: navBarItems,
      fixedColor: Colors.amber,
      backgroundColor: Colors.blueAccent,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      currentIndex: _currentIndex,
    );

    final screen = Scaffold(
      body: screenList.elementAt(_currentIndex),
      bottomNavigationBar: navBar,
    );

    return screen;
  }
}
