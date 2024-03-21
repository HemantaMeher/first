import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class TApiThree extends StatefulWidget {
  const TApiThree({super.key});

  @override
  State<TApiThree> createState() => _TApiThreeState();
}

class _TApiThreeState extends State<TApiThree> {
  String activity = '';
  String type = '';
  String participants = '';
  String price = '';
  String link = '';
  String key = '';
  String accessibility = '';

  Future<void> fatchData() async{
    final response = await http.get(Uri.parse('https://www.boredapi.com/api/activity'));
    if (response.statusCode == 200){
      final list  = jsonDecode(response.body);
      setState(() {
        activity = list['activity'];
        type = list['type'];
        participants = list['participants'].toString();
        price = list['price'].toString();
        link = list['link'].toString();
        key = list['key'];
        accessibility = list['accessibility'].toString();
        
      });
      print(activity);
      print(type);
      print(participants);
      print(price);
      print(link);
      print(key);
      print(accessibility);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fatchData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ApiThree'),),
    );
  }
}