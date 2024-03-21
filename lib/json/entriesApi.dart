import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'models/entriesModel.dart';
class Entries extends StatefulWidget {
  const Entries({super.key});

  @override
  State<Entries> createState() => _EntriesState();
}

class _EntriesState extends State<Entries> {
  Future<EntriesModel> getEntries() async{
    final response = await http.get(Uri.parse('https://datausa.io/api/data?drilldowns=Nation&measures=Population'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      return EntriesModel.fromJson(data);
    } else{
      return EntriesModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("EntriesApi"),),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<EntriesModel>(
              future: getEntries(),
              builder: (context,AsyncSnapshot<EntriesModel> snapshot) {
                if(!snapshot.hasData){
                  return CircularProgressIndicator();
                } else{
                  return ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          Text(snapshot.data!.entries![index].toString())
                        ],
                      ),
                    );
                  },
                );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}