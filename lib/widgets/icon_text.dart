import 'package:flutter/material.dart';

class IconTextScreen extends StatefulWidget {
  const IconTextScreen({Key? key}) : super(key: key);

  @override
  State<IconTextScreen> createState() => _IconTextScreenState();
}

class _IconTextScreenState extends State<IconTextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text and Icon"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Text")),
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
                label: Text("Text")),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
                label: Text("Text")),
            FilledButton.icon(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
                label: Text("Text")),
            OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
                label: Text("Text")),
            SizedBox(height: 20,),
            FilledButton.icon(
              onPressed: (){},
              icon: Icon(Icons.add_a_photo),
              label: Text('Add'),
              style: FilledButton.styleFrom(
                backgroundColor: Colors.cyan,
                fixedSize: Size(150, 70),
                side: BorderSide(color: Colors.indigo,width: 2),
                shadowColor: Colors.pink,
                elevation: 5,
                splashFactory: InkRipple.splashFactory
              ),
            )
          ],
        ),
      ),
    );
  }
}
