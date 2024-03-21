import 'package:flutter/material.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({super.key});

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  @override
  Widget build(BuildContext context) {

    final Shader linearGradient = const LinearGradient(
      colors: <Color> [
        Colors.red,
        Colors.blue,
        Colors.green,
        Colors.limeAccent,
        Colors.yellow,
        Colors.deepPurple,
        Colors.tealAccent,
      ]
    ).createShader(Rect.fromLTWH(
      50,
      30,
      MediaQuery.of(context).size.width * 1,
      MediaQuery.of(context).size.height * 1
    ));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Widget'),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.purple.shade100,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: Container(
                      height: 50,
                      width: 200,
                      color: Colors.grey,
                      child: const Center(
                          child: Text(
                        'Hemanta Meher',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          color: Colors.pink,
                        ),
                      )),
                    ),
                  ),
                  Text(
                    'Text Scale Factor 2',
                    textScaleFactor: 2,
                  ),
                  Text(
                    'Text Scale Factor 3',
                    textScaleFactor: 3,
                  ),
                  Container(
                    height: 95,
                    width: 100,
                    color: Colors.white24,
                    child: Text(
                      'Hello ji how are you kese ho bhalo basi knta acha kemti acha tume kun ta karis kehil he badu',
                      overflow: TextOverflow.fade,
                      softWrap: true,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 95,
                    width: 100,
                    color: Colors.white24,
                    child: Text(
                      'Hello ji how are you kese ho bhalo basi knta acha kemti acha tume kun ta karis kehil he badu',
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 85,
                    width: 100,
                    color: Colors.white24,
                    child: Text(
                      'Hello ji how are you kese ho bhalo basi knta acha kemti acha tume kun ta karis kehil he badu',
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    color: Colors.white24,
                    child: Text(
                      'Hello ji how are you kese ho bhalo basi knta acha kemti acha tume kun ta karis kehil he badu',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Hello ji how are you kese ho bhalo basi knta acha kemti acha tume kun ta karis kehil he baduHello ji how are you kese ho bhalo basi knta acha kemti acha tume kun ta karis kehil he baduHello ji how are you kese ho bhalo basi knta acha kemti acha tume kun ta karis kehil he badu',
                    maxLines: 3,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Hemanta Kumar',
                    style: TextStyle(
                        backgroundColor: Colors.blue, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Hello ji how are you kese ho bhalo basi knta acha kemti acha tume kun ta karis kehil he badu',
                    style: TextStyle(height: 2),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Hello ji how are you kese ho bhalo basi knta acha kemti acha tume kun ta karis kehil he ello ji how are you kese ho bhalo basi knta acha kemti acha tume kun ta karis kehil he badu',
                    style: TextStyle(height: 10),
                  ),
                  SizedBox(height: 10,),
                  Text('Hello World',style: TextStyle(letterSpacing: 5),),
                  SizedBox(height: 10,),
                  Text('Hello World how are you',style: TextStyle(wordSpacing: 10),),
                  SizedBox(height: 10,),
                  Text('decoration: text decoration.none',
                  style: TextStyle(decoration: TextDecoration.none),),
                  Text('decoration: text decoration.underline',style: TextStyle(decoration: TextDecoration.underline),),
                  Text('decoration: text decoration.underline',style: TextStyle(decoration: TextDecoration.lineThrough),),
                  Text('decoration: text decoration.underline',style: TextStyle(decoration: TextDecoration.underline),),
                  RotatedBox(
                    quarterTurns: 4,
                    child: Text('Decoration: text decoration.overline',style: TextStyle(decoration: TextDecoration.overline,fontSize: 20),),
                  ),
                  Text('decoration: TextDecoration.underline, decorationStyle:dashed',
                  style: TextStyle(decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.dashed),),
            
                  Text('decoration: TextDecoration.underline, decorationStyle: DecorationStyle.solid',style: TextStyle(decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.solid),),
            
                  Text('decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.dotted',
                  style: TextStyle(decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.dotted,fontSize: 20)),
            
                  Text('decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.double',
                  style: TextStyle(decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.double,fontSize: 20, decorationColor: Colors.red,decorationThickness: 2),),
            
                  Text('decoration: TextDecoration.underline, decorationColor: DecorationColors.red',
                  style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.red,fontSize: 30, decorationThickness: 5),),
            
                  SizedBox(height: 40,),
            
                  Text('Background Property',
                    style: TextStyle(
                      fontSize: 30,
                      background: Paint()
                      ..color = Colors.yellow
                      ..strokeJoin = StrokeJoin.round
                      ..strokeCap = StrokeCap.square
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 40.0,
            
                      foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 1
                    ),
                  ),
            
                  SizedBox(height: 40,),
            
                  Text(
                    'Shadows Shadow',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      shadows: <Shadow> [
                        Shadow(
                          offset: Offset(10.0, 10.0),
                          blurRadius: 1.0,
                          color: Colors.blue
                        ),
                        Shadow(
                          offset: Offset(8.0, 8.0),
                          blurRadius: 3,
                          color: Colors.red
                        ),
                        Shadow(
                          offset: Offset(15.0, 15.0),
                          blurRadius: 3,
                          color: Colors.orange
                        )
                      ]
                    ),
                  ),
            
                  SizedBox(height: 20,),
            
                  Text(
                    'Gradient Text Widget',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = linearGradient
                    ),
                  ),
            
                ],
              ),
            ),
          )),
    );
  }
}
