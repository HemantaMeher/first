
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class StringPassing extends StatefulWidget {
  const StringPassing({super.key});

  @override
  State<StringPassing> createState() => _StringPassingState();
}

class _StringPassingState extends State<StringPassing> {
  var getData = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getData),
      ),
      body: Container(),
    );
  }
}