import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/widgets/home.dart';
import 'package:flutter_bottom_navigation/widgets/my_profile.dart';
import 'package:flutter_bottom_navigation/widgets/my_search.dart';

class NavDemo extends StatefulWidget {
  const NavDemo({super.key});

  @override
  State<NavDemo> createState() => _NavDemoState();
}

class _NavDemoState extends State<NavDemo> {
  List<Widget> pages = [MyHomePage(), MyProfile(), MySearch()];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (Val) {
          setState(() {
            currentIndex = Val;
          });
        },
        selectedFontSize: 25,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        ],
      ),
    );
  }
}
