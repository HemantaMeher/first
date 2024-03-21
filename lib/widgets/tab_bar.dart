import 'package:first/widgets/drawer_screen.dart';
import 'package:first/widgets/icon_screen.dart';
import 'package:first/widgets/image_screen.dart';
import 'package:first/widgets/navigator_screen.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // animationDuration: Duration(seconds: 3),
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar'),
          bottom: TabBar(
            indicatorColor: Colors.green,
            indicatorWeight: 5,
            // indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              color: Colors.yellow.shade800,
              // image: DecorationImage( image: AssetImage('assets/img.jpg')),
              gradient: LinearGradient(
                colors: [
                  Color(0xff7b4397), Color(0xffdc2430)
                ]
              ),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.pink,width: 2),
              boxShadow: [
                BoxShadow(
                  color: Colors.pink,
                  blurRadius: 5,
                  spreadRadius: 1
                )
              ]
            ),
            tabs: [
              Tab(
                icon: Icon(Icons.music_note),
                text: 'Music',
              ),
              Tab(
                icon: Icon(Icons.email),
                text: 'Email',
              ),
              Tab(
                icon: Icon(Icons.camera),
                text: 'Camera',
              )
            ],
          ),
        ),
        body: TabBarView(children: [
          NavigatorScreen(),
          ImageScreen(),
          IconsScreen()
        ]),
      ),
    );
  }
}
