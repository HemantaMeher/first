import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class TaskApi extends StatefulWidget {
  const TaskApi({Key? key}) : super(key: key);

  @override
  State<TaskApi> createState() => _TaskApiState();
}

class _TaskApiState extends State<TaskApi> {
  // var list = [];
  String data ='';
  Future<void> fatchData() async{
    final response = await http.get(Uri.parse("https://dog.ceo/api/breeds/image/random"));
    if(response.statusCode == 200){
    final  listj = jsonDecode(response.body);
    setState(() {
      data = listj['message'];
    });

    print(data);
    }
    else{
      throw Exception("Faild to Load");
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
      appBar: AppBar(title: Text('Task Api'),centerTitle: true,),
      // body: Image.network(data),
      body: data.isNotEmpty ?
              Image.network(data)
          : Center(child: CircularProgressIndicator())
    );
  }
}

// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// class TaskApi extends StatefulWidget {
//   const TaskApi({Key? key}) : super(key: key);
//
//   @override
//   State<TaskApi> createState() => _TaskApiState();
// }
//
// class _TaskApiState extends State<TaskApi> {
//   List _items = [];
//   String name = "";
//   Future<void> readJson() async{
//     final response = await http.get(Uri.parse('https://official-joke-api.appspot.com/random_joke'));
//     final data = await jsonDecode(response.body);
//     setState(() {
//       _items = data;
//       print(_items);
//     });
//   }
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     readJson();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Test'),),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             _items.isNotEmpty
//                 ?  Expanded(
//                 child: ListView.builder(
//                   itemCount: _items.length,
//                   itemBuilder: (context, index) {
//                     return Card(
//                       // key: ValueKey(_items[index]["id"]),
//                       margin: EdgeInsets.all(10),
//                       color: Colors.purpleAccent,
//                       child: ListTile(
//
//                         title: Text(_items[index]["type"],
//                           style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//                       )
//                     );
//                   },
//                 )
//             )
//                 :   CircularProgressIndicator()
//           ],
//         ),
//       ),
//     );
//   }
// }
