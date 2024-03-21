import 'package:flutter/material.dart';

class IconsScreen extends StatefulWidget {
  const IconsScreen({super.key});

  @override
  State<IconsScreen> createState() => _IconsScreenState();
}

class _IconsScreenState extends State<IconsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Icon'),),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_a_photo_outlined,
              size: 80,
              color: Colors.pink,
              shadows: [
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 10,
                  color: Colors.grey
                )
              ],
            ),

            SizedBox(height: 10,),

            Transform.rotate(
              angle: 100,
              child: Icon(Icons.airport_shuttle_outlined,size: 100,color: Colors.green,shadows: [
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 10,
                  color: Colors.grey
                )
              ],),
            )
          ],
        ),
      ),
    );
  }
}