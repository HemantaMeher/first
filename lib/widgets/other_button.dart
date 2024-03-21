import 'package:flutter/material.dart';

class OtherButtonScreen extends StatefulWidget {
  const OtherButtonScreen({Key? key}) : super(key: key);

  @override
  State<OtherButtonScreen> createState() => _OtherButtonScreenState();
}

class _OtherButtonScreenState extends State<OtherButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Other Buttons'),),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){},
                child: Icon(Icons.add),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(100, 100),
                shape: StarBorder(
                  side: BorderSide(
                    color: Colors.pink,
                    // style: BorderStyle.none,
                    width: 2,
                    strokeAlign: 10,
                  )
                )
              ),
            ),

            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){},
              child: Icon(Icons.add),
              style: ElevatedButton.styleFrom(
                  // fixedSize: Size(100, 100),
                  shape: const OvalBorder(
                    side: BorderSide(
                      color: Colors.pink,
                      // style: BorderStyle.none,
                      width: 2,
                      strokeAlign: 10,
                    ),
                    eccentricity: 0.8
                  )
              ),
            ),

            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: (){},
              child: Icon(Icons.add),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(100, 100),
                  shape: const StadiumBorder(
                    side: BorderSide(
                      color: Colors.pink,
                      // style: BorderStyle.none,
                      width: 2,
                      strokeAlign: 10,
                    ),
                  )
              ),
            ),

            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: (){},
              child: Icon(Icons.add),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(100, 100),
                  shape: const StadiumBorder(
                    side: BorderSide(
                      color: Colors.pink,
                      // style: BorderStyle.none,
                      width: 2,
                      strokeAlign: 10,
                    ),
                  )
              ),
            ),

          ],
        ),
      ),
    );
  }
}
