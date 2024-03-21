import 'package:first/demo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GetxSnackBar extends StatefulWidget {
  const GetxSnackBar({super.key});

  @override
  State<GetxSnackBar> createState() => _GetxSnackBarState();
}

class _GetxSnackBarState extends State<GetxSnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetxSnackBar'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/neon.jpg'), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    "SnackBar Title", "This Will be snackbar message",
                    borderRadius: 30,
                    margin: EdgeInsets.all(25),
                    padding: EdgeInsets.all(30),
                    backgroundColor: Colors.white24,
                    colorText: Color.fromARGB(255, 118, 249, 240),
                    backgroundGradient:
                        LinearGradient(colors: [Colors.pink, Colors.purple]),
                    // borderColor: Color.fromARGB(121, 132, 255, 255),
                    // borderWidth: 1
                    // boxShadows: [
                    //   BoxShadow(
                    //     color: Colors.yellow,
                    //     blurRadius: 1000
                    //   )
                    // ]
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    forwardAnimationCurve: Curves.bounceInOut,
                    duration: Duration(seconds: 5),
                    icon: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    // shouldIconPulse: false,
                    leftBarIndicatorColor: Colors.pinkAccent,
                    mainButton:
                        TextButton(onPressed: () {}, child: Text('Retry')),
                    onTap: (snack) {
                      print('SnackBar Clicked');
                    },
                    overlayBlur: 5,
                    overlayColor: Color.fromARGB(47, 0, 0, 0),
                    showProgressIndicator: true,
                    progressIndicatorValueColor:
                        AlwaysStoppedAnimation(Colors.white),
                    reverseAnimationCurve: Curves.bounceInOut,
                    snackbarStatus: (status) {
                      print("${status} " + "${DateTime.now()}");
                    },
                    // userInputForm: Form(
                    //   child: Row(
                    //     children: [
                    //       Expanded(child: TextField())
                    //     ],
                    //   ),
                    // )
                  );
                },
                child: Text('Show SnackBar'),
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                      title: "Get Dialog",
                      middleText:
                          """A woman finds a pot of treasure on the road while she is returning from work.

                          Delighted (very happy) with her luck, she decides to keep it. As she is taking it home, it keeps changing.

                      However, her enthusiasm refuses to fade away (disappear or faint slowly).

                      What Is Great About It: The old lady in this story is one of the most cheerful characters anyone can encounter in English fiction.

                      Her positive disposition (personality) tries to make every negative situation seem like a gift, and she helps us look at luck as a matter of our view rather than events""",
                      backgroundColor: Colors.teal,
                      titleStyle: TextStyle(color: Colors.white),
                      middleTextStyle: TextStyle(color: Colors.white),
                      radius: 30,
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(onPressed: () {
                              Navigator.pop(context);
                            }, icon: Icon(Icons.card_travel)),
                            IconButton(onPressed: () {
                              
                            }, icon: Icon(Icons.ac_unit_outlined))
                          ],
                        )
                      ],
                      // barrierDismissible: false,
                      textCancel: "Cancle",
                      textConfirm: "Confirm",
                      cancelTextColor: Colors.red,
                      buttonColor: Colors.black,
                      onCancel: () {
                        Get.back();
                      },
                      onConfirm: () {
                        print("You Select the Confirm");
                      },
                      confirmTextColor: Colors.green,
                      confirm: TextButton(onPressed: () {
                        
                      }, child: Text('Confirm'),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.black
                      ),
                      ),
                      cancel: TextButton(onPressed: () {
                        Get.back();
                      }, child: Text('Cancel'),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.black
                      ),
                      ),

                      // titlePadding: EdgeInsets.all(10),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(),
                          TextField(),
                          Text("Hello hii"),
                          Text("Hello hii"),
                          Text("Hello hii"),
                          Text("Hello hii"),
                        ],
                      )
                    );
                  },
                  child: Text("Getx Dialog Box")),

                  ElevatedButton(onPressed: () async{
                    Get.bottomSheet(
                      Container(
                        padding: EdgeInsets.all(10),
                        child: 
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Hello hii"),
                          Text("Hello hii"),
                          Text("Hello hii"),
                          Text("Hello hii"),
                          ],
                        ),
                      ),
                      barrierColor: Colors.red.withOpacity(.4),
                      isDismissible: true,
                      backgroundColor: Colors.green,
                      enterBottomSheetDuration: Duration(seconds: 1),
                      exitBottomSheetDuration: Duration(seconds: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                    );
                    await Future.delayed(Duration(seconds: 1)).then((value) => Get.back());
                  }, child: Text("Getx ButtomSheet"))
            ],
          ),
        ),
      ),
    );
  }
}
