import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class TApiTwo extends StatefulWidget {
  const TApiTwo({Key? key}) : super(key: key);

  @override
  State<TApiTwo> createState() => _TApiTwoState();
}

class _TApiTwoState extends State<TApiTwo> {
  String data = '';
  String data1 = '';
  Future<void> fatchDataa () async{
    final response = await http.get(Uri.parse('https://official-joke-api.appspot.com/random_joke'));
    if(response.statusCode == 200){
      final list = jsonDecode(response.body);
      setState(() {
        data = list['setup'];
        data1 = list['type'];
      });
      print(data1);
    print(data);
    }
    else{
      throw Exception('Faild to load');
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fatchDataa();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jokes'),),
      body: Container(
        child: Column(
          children: [
            Text(data1),
            SizedBox(height: 10,),
            Text(data)
          ],
        ),
      ),
    );

  }
}
