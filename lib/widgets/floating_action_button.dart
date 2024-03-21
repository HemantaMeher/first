import 'package:flutter/material.dart';

class FloatingActionButtonScreen extends StatefulWidget {
  const FloatingActionButtonScreen({Key? key}) : super(key: key);

  @override
  State<FloatingActionButtonScreen> createState() => _FloatingActionButtonScreenState();
}

class _FloatingActionButtonScreenState extends State<FloatingActionButtonScreen> {
  double sa = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Floating Action Button'),),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const SizedBox(height: 20,),
            const Center(
              child: Text("Floating Action Button"),
            ),
            const SizedBox(height: 20,),
            FloatingActionButton.small(onPressed: (){},child: Text('H',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
            const SizedBox(height: 20,),
            FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
            const SizedBox(height: 20,),
            FloatingActionButton.large(onPressed: (){},child: Icon(Icons.person,size: 60,),),
            const SizedBox(height: 20,),

            FloatingActionButton.extended(
              onPressed: (){},
              label: const Text('Hemanta'),
              icon: const Icon(Icons.heart_broken),
              extendedIconLabelSpacing: 20,
              isExtended: true,
              extendedPadding: const EdgeInsets.all(20),
              extendedTextStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20,),

            FloatingActionButton.extended(
              onPressed: (){},
              label: const Text('Kumar'),
              icon: const Icon(Icons.heart_broken),
              extendedIconLabelSpacing: 20,
              isExtended: true,
              extendedPadding: const EdgeInsets.all(20),
              extendedTextStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: Colors.pink,width: 2),
              ),
              backgroundColor: Colors.yellow,
              foregroundColor: Colors.pink,
            ),
            const SizedBox(height: 20,),

            FloatingActionButton.extended(
              onPressed: (){},
              label: const Text('Meher'),
              icon: const Icon(Icons.heart_broken),
              extendedIconLabelSpacing: 20,
              isExtended: true,
              extendedPadding: const EdgeInsets.all(20),
              extendedTextStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.cyan,width: 2,strokeAlign: 5),
              ),
              backgroundColor: Color.fromARGB(255, 22, 245, 33),


            )
          ],
        ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(sa == -10){
            setState(() {
              sa = 10;
            });
          } else{
            setState(() {
              sa = -10;
            });
          }
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.purpleAccent,
        // disabledElevation: 20,
        elevation: 10,
        foregroundColor: Colors.cyan,
        highlightElevation: 30,
        splashColor: Colors.green,
        hoverColor: Colors.yellow,
        hoverElevation: 30,
        tooltip: 'Add',
        // mini: true,

        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: Colors.black,
            width: 2,
            style: BorderStyle.solid,
            strokeAlign: sa,
          )
        ),

      ),


    );
  }
}
