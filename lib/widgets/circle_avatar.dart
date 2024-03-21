import 'package:flutter/material.dart';

class CircleAvatarScreen extends StatefulWidget {
  const CircleAvatarScreen({super.key});

  @override
  State<CircleAvatarScreen> createState() => _CircleAvatarScreenState();
}

class _CircleAvatarScreenState extends State<CircleAvatarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circle Avatar'),
      ),

      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 65,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 60,
                        backgroundImage: NetworkImage("https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60"),
                      ),
                    ),
                    Text('Hemanta Meher',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue),)
                  ],
                ),
             
            ),
          ],
        ),
      ),
    );
  }
}