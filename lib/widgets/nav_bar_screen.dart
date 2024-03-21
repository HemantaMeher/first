import 'package:flutter/material.dart';

import 'icon_screen.dart';
import 'image_screen.dart';
import 'navigator_screen.dart';
class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentIndex = 0;
  List pages = [
    NavigatorScreen(),
    ImageScreen(),
    IconsScreen()
  ];
  List color = [
    Colors.yellow,
    Colors.cyan,
    Colors.green
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Nav Bar'),),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: color[currentIndex],
        selectedFontSize: 15,
        selectedIconTheme: IconThemeData(color: Colors.pink),
        // selectedItemColor: Colors.red,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        showSelectedLabels: true,
        unselectedFontSize: 8,
        unselectedIconTheme: IconThemeData(color: Colors.purple),
        elevation: 40,
        type: BottomNavigationBarType.shifting,selectedItemColor: Colors.pink,

        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Person')
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
