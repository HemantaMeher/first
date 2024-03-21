import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class JsonInternet extends StatefulWidget {
  const JsonInternet({Key? key}) : super(key: key);

  @override
  State<JsonInternet> createState() => _JsonInternetState();
}

class _JsonInternetState extends State<JsonInternet> {
  var list = [];
  Future<void> fatchAlbum() async{
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    if( response.statusCode == 200){
      list = jsonDecode(response.body);
      print(list);
    }
    else {
      throw Exception('Faild to load album');
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fatchAlbum();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('JSON internet'),centerTitle: true,),
      body: list.isNotEmpty
      ? ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(list[index]["id"].toString()),
            title: Text(list[index]["title"]),
          );
        }
      )
          : Center(child: CircularProgressIndicator())
    );
  }
}
