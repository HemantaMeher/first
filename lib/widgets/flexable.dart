import 'package:flutter/material.dart';

class FlexableScreen extends StatefulWidget {
  const FlexableScreen({super.key});

  @override
  State<FlexableScreen> createState() => _FlexableScreenState();
}

class _FlexableScreenState extends State<FlexableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flexable Widget'),),

      body: Column(
        children: [
          Flexible(
            flex: 2,
            fit: FlexFit.loose,
            child: Container(
              color: Colors.yellow,
              child: Text('Hello World'),
            ),
          ),

          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Container(
              color: Colors.red,
              child: Text('Hello World'),
            ),
          ),
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: Container(
              color: Colors.green,
              child: Text('Hello World'),
            ),
          ),
        ],
      ),
    );
  }
}