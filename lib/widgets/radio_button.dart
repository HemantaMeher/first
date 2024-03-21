import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({Key? key}) : super(key: key);

  @override
  State<RadioButtonScreen> createState() => _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {

  String? gender;
  Color color = Colors.pink;
  Color color1 = Colors.cyan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Radio Button'),),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Select Gender',style: TextStyle(fontSize: 18),),

            Divider(),
            
            RadioListTile(
              title: Text('Male'),
              value: 'Male',
              controlAffinity: ListTileControlAffinity.trailing,
              activeColor: gender == 'Male' ? color1: Colors.cyan.shade200,
              tileColor:gender == "Male" ? color: Colors.cyan.shade200,
              // subtitle: Text('illu illu',style: TextStyle(color: Colors.white),),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.indigo)
              ),
              groupValue: gender,
              onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },),
            SizedBox(height: 10,),

            RadioListTile(
              title: Text('Female'),
                value: 'Female',
                controlAffinity: ListTileControlAffinity.trailing,
                activeColor: gender == 'Female' ? color1: Colors.purpleAccent,
                tileColor:  gender == 'Female' ? color:Colors.cyan.shade200,
                // subtitle: Text('illu illu',style: TextStyle(color: Colors.white),),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.indigo),
                ),
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                }
            ),
            SizedBox(height: 10,),
            
            RadioListTile(
              title: Text('Other'),
                value: 'Other',
                controlAffinity: ListTileControlAffinity.trailing,
                activeColor: gender == 'Female' ? color1: Colors.cyan.shade200,
                tileColor: gender == 'Other' ? color:Colors.cyan.shade200,
                // subtitle: Text('illu illu',style: TextStyle(color: Colors.white),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.indigo)
                ),

                groupValue: gender,
                onChanged: (value){
                  setState(() {
                    gender = value.toString();
                  });
                }
            )


          ],
        ),
      ),
    );
  }
}
