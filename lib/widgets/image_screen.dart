import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Image Widget'),),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 300,
              color: Colors.pink,
              child: Image.asset(
                'assets/back.jpg',
                fit: BoxFit.fill,
              )
            ),
            SizedBox(height: 10,),
            
            Image.network(
                "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
                height: 150,
                errorBuilder: (BuildContext ctx,Object? obj,StackTrace? trace){
                  return Column(
                    children: [
                      Icon(Icons.network_check,size: 50,),
                      Text('No Internet Connection..',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red),),
                    ],
                  );
                },
              )
          ],
        ),
      ),

    );
  }
}