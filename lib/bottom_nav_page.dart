import 'package:flutter/material.dart';
import 'package:flutter_application_bottom_navigation_bar/explore_page.dart';
import 'package:flutter_application_bottom_navigation_bar/home_page.dart';
import 'package:flutter_application_bottom_navigation_bar/profile_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Nav. Page")),
        body: IndexedStack(
          index: _selectedIndex,
          children: [HomePage(), ExplorePage(), ProfilePage()],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: "EXplore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle_rounded),
                label: "Profile"),
          ],
          selectedItemColor: Colors.orange,
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text("User Information")),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.explore),
                title: Text("Explore"),
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.supervised_user_circle_rounded),
                title: Text("Profile"),
                onTap: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ));
  }
}
