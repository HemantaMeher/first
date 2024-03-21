import 'package:flutter/material.dart';

class DropDownScreen extends StatefulWidget {
  const DropDownScreen({super.key});

  @override
  State<DropDownScreen> createState() => _DropDownScreenState();
}

class _DropDownScreenState extends State<DropDownScreen> {

  // String dropdownval = "Two";
  String? dropdownval;
  var items = [
    'One',
    'Two',
    'Three',
    "India",
    'Four',
    'Five',
  ];

  String choose = 'abinav';
  var names = ['hemanta','abinav','baji'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drop Down')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

             DropdownButton(
              value: dropdownval,
              items: items.map((String listitems){
                return DropdownMenuItem(
                  value: listitems,
                  child: Center(child: Text(listitems)),
                );
              }).toList(),
              onChanged: (String? newVal){
                setState(() {
                  dropdownval = newVal!;
                  print(newVal);
                });
              },
            ),

            /* DropdownButton(
              value: choose,
              items: names.map((String listname){
                return DropdownMenuItem(
                  value: listname,
                  child: Center(child: Text(listname),),
                );
              }).toList(), 
              onChanged: (String? newv){
                setState(() {
                  choose = newv!;
                  print(newv);
                });
              }
            ), */

            /*SizedBox(
              width: 100,
              child: DropdownButton(
                isDense: false,
                elevation: 20,
                isExpanded: true,
                alignment: Alignment.center,
                hint: Text('Select Number'),
                iconSize: 50,
                underline: SizedBox(),
                borderRadius: BorderRadius.circular(20),
                dropdownColor: Colors.yellow,
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 18,),
                itemHeight: 150,
                menuMaxHeight: 200,
                iconEnabledColor: Colors.pink,


                value: dropdownval,
                items: items.map((String listitems){
                  return DropdownMenuItem(
                    value: listitems,
                    child: Center(child: Text(listitems)),
                  );
                }).toList(),
                onChanged: (String? newVal){
                  setState(() {
                    dropdownval = newVal!;
                    print(newVal);
                  });
                },
              ),
            ),*/
            
            

          ],
        ),
      ),

    );
  }
}