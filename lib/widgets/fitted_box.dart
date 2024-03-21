import 'package:flutter/material.dart';

class FittedBoxScreen extends StatefulWidget {
  const FittedBoxScreen({super.key});

  @override
  State<FittedBoxScreen> createState() => _FittedBoxScreenState();
}

class _FittedBoxScreenState extends State<FittedBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fitted Box'),),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FittedBox(
                fit: BoxFit.fill,
                child: Text('Hello World',style: TextStyle(fontSize: 30)),
              ),

              SizedBox(height: 10,),

              Text('hejhjnhd wjwqkjn qd jgfaflhjssudkDA JDJSFGFKF DSJFGHFUN FJJODAASUDFNJDUWJEJHDJHCHJ H H DUSHD JAD dl djHDUdjH DdkjhUHDJd UI',style: TextStyle(fontSize: 22),),

              FittedBox(
                child: Text('hejhjnhd wjwqkjn qd jgfaflhjssudkDA JDJSFGFKF DSJFGHFUN FJJODAASUDFNJDUWJEJHDJHCHJ H H DUSHD JAD dl djHDUdjH DdkjhUHDJd UI',style: TextStyle(fontSize: 22),)
              ),

              // FittedBox(
              //   fit: BoxFit.cover,
              //   child: Image.network('https://images.unsplash.com/photo-1587405254461-abd1d1c7440e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
              // ),

              SizedBox(height: 10,),

              Container(
                height: 200,
                width: 200,
                child: Image.network('https://images.unsplash.com/photo-1587405254461-abd1d1c7440e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
              ),

              SizedBox(height: 10,),

              

            ],
          ),
        ),
      ),
    );
  }
}