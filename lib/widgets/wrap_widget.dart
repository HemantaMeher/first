import 'package:flutter/material.dart';
class WrapScreen extends StatefulWidget {
  const WrapScreen({Key? key}) : super(key: key);

  @override
  State<WrapScreen> createState() => _WrapScreenState();
}

class _WrapScreenState extends State<WrapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wrap widget'),),
      body: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 20,
        runSpacing: 20,
        children: List.generate(51, (index) => Container(
          height: 100,
          width: 100,
          color: Colors.pink,
          child: Center(child: Text('$index',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),)),
        )),
      ),
      // Wrap(
      //   alignment: WrapAlignment.center,
      //   crossAxisAlignment: WrapCrossAlignment.center,
      //   // direction: Axis.vertical,
      //   spacing: 20,
      //   runSpacing: 20,
      //   children: [
      //     Container(
      //       height: 150,
      //       width: 150,
      //       color: Colors.purpleAccent,
      //     ),
      //     Container(
      //       height: 150,
      //       width: 150,
      //       color: Colors.purpleAccent,
      //     ),
      //     Container(
      //       height: 150,
      //       width: 150,
      //       color: Colors.purpleAccent,
      //     ),
      //     Container(
      //       height: 150,
      //       width: 150,
      //       color: Colors.purpleAccent,
      //     ),
      //     Container(
      //       height: 150,
      //       width: 150,
      //       color: Colors.purpleAccent,
      //     ),
      //     Container(
      //       height: 150,
      //       width: 150,
      //       color: Colors.purpleAccent,
      //     ),Container(
      //       height: 150,
      //       width: 150,
      //       color: Colors.purpleAccent,
      //     ),
      //     Container(
      //       height: 150,
      //       width: 150,
      //       color: Colors.purpleAccent,
      //     ),
      //     Container(
      //       height: 150,
      //       width: 150,
      //       color: Colors.purpleAccent,
      //     ),
      //     Container(
      //       height: 150,
      //       width: 150,
      //       color: Colors.purpleAccent,
      //     ),
      //     Container(
      //       height: 150,
      //       width: 150,
      //       color: Colors.purpleAccent,
      //     ),
      //     Container(
      //       height: 150,
      //       width: 150,
      //       color: Colors.purpleAccent,
      //     ),
      //     Container(
      //       height: 150,
      //       width: 150,
      //       color: Colors.purpleAccent,
      //     ),
      //     Container(
      //       height: 150,
      //       width: 150,
      //       color: Colors.purpleAccent,
      //     ),
      //     Container(
      //       height: 150,
      //       width: 150,
      //       color: Colors.purpleAccent,
      //     ),
      //     Container(
      //       height: 150,
      //       width: 150,
      //       color: Colors.purpleAccent,
      //     ),
      //     Container(
      //       height: 150,
      //       width: 150,
      //       color: Colors.purpleAccent,
      //     ),

          
      //   ],
      // ),

    );
  }
}
