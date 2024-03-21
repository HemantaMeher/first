import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ListPassing extends StatefulWidget {
  const ListPassing({super.key});

  @override
  State<ListPassing> createState() => _ListPassingState();
}

class _ListPassingState extends State<ListPassing> {
  List getData = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(getData[0]),),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(getData[0]),
              Text(getData[1])
            ],
          ),
        ),
      ),
    );
  }
}