import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class GetxSnackDialogBSheet extends StatefulWidget {
  const GetxSnackDialogBSheet({Key? key}) : super(key: key);

  @override
  State<GetxSnackDialogBSheet> createState() => _GetxSnackDialogBSheetState();
}

class _GetxSnackDialogBSheetState extends State<GetxSnackDialogBSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.cyan,
      // appBar: AppBar(title: Text('Getx Tutorial'),),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/neon.jpg'),fit: BoxFit.cover)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                        "Hello", "How are You",
                      titleText: Text("Hello",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                      messageText: Text("How are You",style: TextStyle(color: Colors.white60),),
                      backgroundColor: Colors.white60,
                      backgroundGradient: LinearGradient(colors: [
                        Color(0xff07fad6),
                        Colors.yellowAccent,
                        Colors.purple,
                      ]),
                      dismissDirection: DismissDirection.horizontal,
                      maxWidth: 350,
                      icon: Icon(Icons.telegram,size: 30,color: Colors.white,),
                      borderWidth: 1,
                      borderColor: Colors.white30,
                      // barBlur: 20,
                      boxShadows: [
                        BoxShadow(color: Colors.white60,blurRadius: 20),
                      ]
                    );
                  },
                  child: Text("Snackbar")
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                      title: "Hello",
                      middleText: "How are you",
                      backgroundColor: Colors.cyan,
                      titleStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                      middleTextStyle: TextStyle(color: Colors.white60,fontWeight: FontWeight.bold),
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('ndsuhfna ana aijj afa n')
                        ],
                      )
                    );
                  }, 
                  child: Text('Dialog')
              )
            ],
          ),
        ),
      ),
    );
  }
}
