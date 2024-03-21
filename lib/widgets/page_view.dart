import 'package:flutter/material.dart';

import 'icon_screen.dart';
import 'image_screen.dart';
import 'navigator_screen.dart';
class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page View'),),
      body: PageView(
        pageSnapping: true,
        // reverse: true,
        // physics: NeverScrollableScrollPhysics(),
        
        onPageChanged: (int? n){
          print(n);
        },
        scrollDirection: Axis.vertical,
        children: [
          NavigatorScreen(),
          ImageScreen(),
          IconsScreen()
        ],
      ),
    );
  }
}
