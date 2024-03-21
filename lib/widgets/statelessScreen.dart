import 'package:flutter/material.dart';

class StatelessScreen extends StatelessWidget {
  const StatelessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stateless Widgets'),),
      body: Center(
        child: Container(
          child: Text('Stateless'),
        ),
      ),
    );
  }
}