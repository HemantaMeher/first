import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SharedPreferencesScreen extends StatefulWidget {
  const SharedPreferencesScreen({Key? key}) : super(key: key);

  @override
  State<SharedPreferencesScreen> createState() => _SharedPreferencesScreenState();
}

class _SharedPreferencesScreenState extends State<SharedPreferencesScreen> {
  var nameController = TextEditingController();

  static const String KEYNAME = "name";
  var nameValue = "No Value Saved";

  @override
  void initState() {
    super.initState();
    getValue();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SharedPreferences'),
        ),
        body: Container(
          child: Center(
            child: SizedBox(
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                        label: Text('Name'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21)
                        )
                    ),
                  ),

                  SizedBox(
                    height: 11,
                  ),

                  ElevatedButton(onPressed: () async{
                    // var name = nameController.text.toString();

                    var prefs = await SharedPreferences.getInstance();
                    prefs.setString(KEYNAME, nameController.text.toString());

                  }, child: Text('Save')),

                  SizedBox(
                    height: 11,
                  ),

                  Text(nameValue)


                ],
              ),
            ),
          ),
        )
    );
  }

  void getValue()async{

    var prefs = await SharedPreferences.getInstance();
    var getName =  prefs.getString(KEYNAME);

    nameValue = getName ?? "No Valued Saved";

    setState(() {

    });

  }

}

