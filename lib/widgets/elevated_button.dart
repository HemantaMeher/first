import 'package:flutter/material.dart';

class ElevatedButtonScreen extends StatefulWidget {
  const ElevatedButtonScreen({Key? key}) : super(key: key);

  @override
  State<ElevatedButtonScreen> createState() => _ElevatedButtonScreenState();
}

class _ElevatedButtonScreenState extends State<ElevatedButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Elevated Button'),),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){}, child: Text('Elevated button')),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: null, child: Text('null Elevated Button'),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){}, child: Text('Elevated Button Style'),
                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.cyan.shade200,

                  textStyle: const TextStyle(
                    fontSize: 30,
                    color: Colors.pink,
                    fontStyle: FontStyle.italic
                  ),
                  side: BorderSide(color: Colors.cyan,width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadowColor: Colors.lightBlue,
                  elevation: 7,
                  // disabledBackgroundColor: Colors.red,
                  // disabledForegroundColor: Colors.purple
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: null, child: Text('Elevated Button Style'),
                style: ElevatedButton.styleFrom(

                    backgroundColor: Colors.orange,
                    // foregroundColor: Colors.cyan.shade200,

                    textStyle: const TextStyle(
                        fontSize: 30,
                        color: Colors.pink,
                        fontStyle: FontStyle.italic
                    ),
                    side: BorderSide(color: Colors.cyan,width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadowColor: Colors.lightBlue,
                    elevation: 7,
                    disabledBackgroundColor: Colors.red,
                    disabledForegroundColor: Colors.purple
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
