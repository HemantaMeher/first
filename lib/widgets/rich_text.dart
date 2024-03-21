import 'package:flutter/material.dart';

class RichTextScreen extends StatefulWidget {
  const RichTextScreen({super.key});

  @override
  State<RichTextScreen> createState() => _RichTextScreenState();
}

class _RichTextScreenState extends State<RichTextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rich Text'),),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              RichText(
                text: TextSpan(
                  text: 'Login',
                  style: const TextStyle(color: Colors.green),
                  children: [
                    const TextSpan(text: 'Hello', style: TextStyle(color: Colors.red)),
                    WidgetSpan(child: TextButton(
                      child: const Text('Resend Code'),
                      onPressed: (){},
                    ))
                  ]
                ),
              ),
              
              RichText(text: TextSpan(
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.orange),
                children: [
                  const TextSpan(
                    text: 'Hemanta '
                  ),
                  TextSpan(
                    text: 'Kumar ',
                    style: TextStyle(color: Colors.blue.shade300)
                  ),
                  const TextSpan(
                    text: 'Meher',
                    style: TextStyle(color: Colors.green)
                  )
                ]
              )),

              RichText(text: TextSpan(children: [
                TextSpan(text: 'Hello', style: TextStyle(color: Colors.green)),
                WidgetSpan(child: Icon(Icons.add_circle)),
                TextSpan(
                  text: 'World',
                  style: TextStyle(color: Colors.red,decoration: TextDecoration.lineThrough)
                ),
                WidgetSpan(child: Image.network('https://thumbs.dreamstime.com/z/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg',
                  height: 50,
                )),
                TextSpan(text: 'Flutter', style: TextStyle(color: Colors.orange))
              ]))

            ],
          ),
        ),


    );
  }
}