import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MapPassing extends StatefulWidget {
  const MapPassing({super.key});

  @override
  State<MapPassing> createState() => _MapPassingState();
}

class _MapPassingState extends State<MapPassing> {
  var getData = Get.arguments;
  String? name;
  String? name1;
  @override
  void initState() {
    super.initState();
    name = getData[0]['first'];
    name1 = getData[1]['second'];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map Passing'),
      ),
      body: Center(
        child: Text(name! + ' ' + name1!),
        ),
    );
  }
}