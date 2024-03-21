import 'package:flutter/material.dart';

class DividerScreen extends StatefulWidget {
  const DividerScreen({Key? key}) : super(key: key);

  @override
  State<DividerScreen> createState() => _DividerScreenState();
}

class _DividerScreenState extends State<DividerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Divider Screen'),),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Text('Hello world',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),),
                SizedBox(width: 30,),
              ],
            ),
            Divider(color: Colors.pink,thickness: 5,height: 20,indent: 210,endIndent: 20,),
            Container(
              height: 80,
              child: Row(
                children: [
                  SizedBox(width: 30,),
                  Text('Hello world',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),),
                  VerticalDivider(color: Colors.purple,thickness: 5,width: 50,indent: 10,endIndent: 10,),
                ],
              ),
            ),
            Divider(color: Colors.pink,thickness: 5,height: 20,indent: 20,endIndent: 190,),

          //  ----------------------------------------------------------------------------------------------------------

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Text('Hello world',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),),
                SizedBox(width: 30,),
              ],
            ),
            Divider(color: Colors.pink,thickness: 5,height: 20,indent: 210,endIndent: 20,),
            Container(
              height: 80,
              child: Row(
                children: [
                  SizedBox(width: 30,),
                  Text('Hello world',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),),
                  VerticalDivider(color: Colors.purple,thickness: 5,width: 50,indent: 10,endIndent: 10,),
                ],
              ),
            ),
            Divider(color: Colors.pink,thickness: 5,height: 20,indent: 20,endIndent: 190,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Text('Hello world',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),),
                SizedBox(width: 30,),
              ],
            ),
            Divider(color: Colors.pink,thickness: 5,height: 20,indent: 210,endIndent: 20,),
            Container(
              height: 80,
              child: Row(
                children: [
                  SizedBox(width: 30,),
                  Text('Hello world',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),),
                  VerticalDivider(color: Colors.purple,thickness: 5,width: 50,indent: 10,endIndent: 10,),
                ],
              ),
            ),
            Divider(color: Colors.pink,thickness: 5,height: 20,indent: 20,endIndent: 190,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Text('Hello world',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),),
                SizedBox(width: 30,),
              ],
            ),
            Divider(color: Colors.pink,thickness: 5,height: 20,indent: 210,endIndent: 20,),
            Container(
              height: 80,
              child: Row(
                children: [
                  SizedBox(width: 30,),
                  Text('Hello world',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),),
                  VerticalDivider(color: Colors.purple,thickness: 5,width: 50,indent: 10,endIndent: 10,),
                ],
              ),
            ),
            Divider(color: Colors.pink,thickness: 5,height: 20,indent: 20,endIndent: 190,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Text('Hello world',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),),
                SizedBox(width: 30,),
              ],
            ),
            Divider(color: Colors.pink,thickness: 5,height: 20,indent: 210,endIndent: 20,),
            Container(
              height: 80,
              child: Row(
                children: [
                  SizedBox(width: 30,),
                  Text('Hello world',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),),
                  VerticalDivider(color: Colors.purple,thickness: 5,width: 50,indent: 10,endIndent: 10,),
                ],
              ),
            ),
            Divider(color: Colors.pink,thickness: 5,height: 20,indent: 20,endIndent: 190,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Text('Hello world',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),),
                SizedBox(width: 30,),
              ],
            ),
            Divider(color: Colors.pink,thickness: 5,height: 20,indent: 210,endIndent: 20,),
            Container(
              height: 80,
              child: Row(
                children: [
                  SizedBox(width: 30,),
                  Text('Hello world',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),),
                  VerticalDivider(color: Colors.purple,thickness: 5,width: 50,indent: 10,endIndent: 10,),
                ],
              ),
            ),
            Divider(color: Colors.pink,thickness: 5,height: 20,indent: 20,endIndent: 190,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Text('Hello world',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),),
                SizedBox(width: 30,),
              ],
            ),
            Divider(color: Colors.pink,thickness: 5,height: 20,indent: 210,endIndent: 20,),
            Container(
              height: 80,
              child: Row(
                children: [
                  SizedBox(width: 30,),
                  Text('Hello world',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),),
                  VerticalDivider(color: Colors.purple,thickness: 5,width: 50,indent: 10,endIndent: 10,),
                ],
              ),
            ),
            Divider(color: Colors.pink,thickness: 5,height: 20,indent: 20,endIndent: 190,),


          ],
        ),
      ),
    );
  }
}
