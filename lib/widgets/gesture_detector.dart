import 'package:flutter/material.dart';

class GestureDetectScreen extends StatefulWidget {
  const GestureDetectScreen({Key? key}) : super(key: key);

  @override
  State<GestureDetectScreen> createState() => _GestureDetectScreenState();
}

class _GestureDetectScreenState extends State<GestureDetectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            InkWell(
              onTap: (){
                print('Print first');
              },
              child: Container(
                height: 300,
                width: 300,
                color: Colors.yellow,
                child: InkWell(
                  onTap: () {
                    print('On tap Second');
                  },
                  child: Container(
                    margin: EdgeInsets.all(100),
                    height: 200,
                    width: 200,
                    color: Colors.indigo,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){
                print('Print first');
              },
              child: Container(
                height: 300,
                width: 300,
                color: Colors.yellow,
                child: GestureDetector(
                  onTap: () {
                    print('On tap Second');
                  },
                  child: Container(
                    margin: EdgeInsets.all(100),
                    height: 200,
                    width: 200,
                    color: Colors.indigo,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
