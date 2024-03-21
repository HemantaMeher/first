import 'package:flutter/material.dart';

class StatefulScreen extends StatefulWidget {
  const StatefulScreen({super.key});

  @override
  State<StatefulScreen> createState() => _StatefulScreenState();
}

class _StatefulScreenState extends State<StatefulScreen> { 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("******** Init State ********");
  }
  String titl = 'Stateless';
  int n = 0;
  @override
  Widget build(BuildContext context) {
    print("----build----");
    
    return Scaffold(
      appBar: AppBar(title: Text(titl +" "+ n.toString()),),
      body: Center(
        child: TextButton(onPressed: () {
          setState(() {
            titl = "Stateful";
            n++;
          });
        }, child: Text('Change appBar Name')),
      ),
    );
  }
}