import 'package:flutter/material.dart';

class SwitchButtonWidget extends StatefulWidget {
  const SwitchButtonWidget({Key? key}) : super(key: key);

  @override
  State<SwitchButtonWidget> createState() => _SwitchButtonWidgetState();
}

class _SwitchButtonWidgetState extends State<SwitchButtonWidget> {

  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Switch Butten'),),
      body: Center(
        child: Column(
          children: [

            Switch(
                value: light,
                onChanged: (bool value) {
                  setState(() {
                    light = value;
                    print(light);
                  });
                },
            ),
            SizedBox(height: 10,),
            Switch(
                value: light,
                overlayColor: MaterialStateProperty.all(Colors.red),
                onChanged: (bool value){
                  setState(() {
                    light = value;
                    print(light);
                  });
                }
            ),

            SizedBox(height: 10,),
            Switch(
                value: light,
                overlayColor: MaterialStateProperty.all(Colors.red),
                trackColor: MaterialStateProperty.all(Colors.orange),
                onChanged: (bool value){
                  setState(() {
                    light = value;
                    print(light);
                  });
                }
            ),
            SizedBox(height: 10,),
            Switch(
                value: light,
                overlayColor: MaterialStateProperty.all(Colors.red),
                trackColor: MaterialStateProperty.all(Colors.orange),
                thumbColor: const MaterialStatePropertyAll<Color>(Colors.green),
                onChanged: (bool value){
                  setState(() {
                    light = value;
                    print(light);
                  });
                }
            ),
            SizedBox(height: 10,),
            Switch(
                value: light,
                overlayColor: MaterialStateProperty.all(Colors.red),
                trackColor: MaterialStateProperty.all(Colors.orange),
                // thumbColor: const MaterialStatePropertyAll<Color>(Colors.green),
                activeColor: Colors.red,
                inactiveThumbColor: Colors.green,
                mouseCursor: MouseCursor.defer,
                onChanged: (bool value){
                  setState(() {
                    light = value;
                    print(light);
                  });
                }
            ),


          ],
        ),
      ),
    );
  }
}
