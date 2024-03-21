import 'package:flutter/material.dart';

class ExpandedScreen extends StatefulWidget {
  const ExpandedScreen({super.key});

  @override
  State<ExpandedScreen> createState() => _ExpandedScreenState();
}

class _ExpandedScreenState extends State<ExpandedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expanded'),),
      body: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              // width: 100,
              height: 100,
              color: Colors.purple,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              // width: 100,
              height: 100,
              color: Colors.yellow,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              // width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              // width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}