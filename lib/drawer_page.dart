import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Home Page"),
      ),
      body: Center(
        child: Text("Home"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("User Information")),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.explore),
              title: Text("Explore"),
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle_rounded),
              title: Text("Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
