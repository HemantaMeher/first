import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class JsonExpOne extends StatefulWidget {
  const JsonExpOne({Key? key}) : super(key: key);

  @override
  State<JsonExpOne> createState() => _JsonExpOneState();
}

class _JsonExpOneState extends State<JsonExpOne> {
  List _items = [];
  String name = "";
  Future<void> readJson() async{
    final String response = await rootBundle.loadString('assets/jsonExpOne.json');
    final data = await json.decode(response);
    setState(() {
      _items = data;
      name = data["name"];
      print(_items);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readJson();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _items.isNotEmpty
                ?  Expanded(
                child: ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    return Card(
                      // key: ValueKey(_items[index]["id"]),
                      margin: EdgeInsets.all(10),
                      color: Colors.purpleAccent,
                      child: ListTile(
                        leading: CircleAvatar(
                            child: Text(_items[index]["id"],
                              style: TextStyle(fontWeight: FontWeight.bold),)
                        ),
                        title: Text(_items[index]["name"],
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        subtitle: Text(_items[index]["description"],
                          style: TextStyle(color: Colors.white70),),
                        trailing: Icon(Icons.star,color: Colors.yellowAccent,),
                      ),
                    );
                  },
                )
            )
                :   Container()
          ],
        ),
      ),
    );
  }
}
