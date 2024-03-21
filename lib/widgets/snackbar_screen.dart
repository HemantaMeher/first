import 'package:flutter/material.dart';

class SnackbarScreen extends StatefulWidget {
  const SnackbarScreen({super.key});

  @override
  State<SnackbarScreen> createState() => _SnackbarScreenState();
}

class _SnackbarScreenState extends State<SnackbarScreen> 
      with TickerProviderStateMixin {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SnackBar'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
            ),
            ElevatedButton(
              onPressed: () {
                if(controller.text.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please Enter the name'),
                      duration: Duration(seconds: 1),
                      behavior: SnackBarBehavior.floating,
                      )
                  );
                } else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Your Name is ${controller.text}'),
                      duration: Duration(seconds: 1),
                      behavior: SnackBarBehavior.floating,
                    )
                  );
                }
              }, 
              child: Text('Show Snackbar') 
            ),

            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("This is snackBar"),
                    backgroundColor: Colors.blue,
                    duration: Duration(seconds: 2),
                    elevation: 10.0,
                    // margin: EdgeInsets.all(20),
                    behavior: SnackBarBehavior.floating,
                    padding: EdgeInsets.all(5),
                    // width: 200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(
                        color: Colors.pink
                      )
                    ),
                    action: SnackBarAction(
                      label: 'ACTION',
                      textColor: Colors.pink,
                      onPressed: () {
                        
                      },
                    ),
                    showCloseIcon: true,
                    animation: AnimationController(
                      vsync: this, duration: Duration(milliseconds: 250)
                    ),
                    onVisible: () {
                      print('Snackbar is visable');
                    },
                    dismissDirection: DismissDirection.down,
                  )
                );
              },
              child: Text('Design Snackbar') 
            ),
            
            TextButton(
              onPressed: () => showDialog(
                context: context,
                builder: (context) => Dialog(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('This is a Typicl dialog'),
                        SizedBox(height: 15,),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Close'),
                        )
                      ],
                    ),
                ),
                ),
              ),
              child: Text('Show Dialog')
            ),
            SizedBox(height: 15,),
            TextButton(
              onPressed: () => showDialog(
                context: context,
                builder: (context) => Dialog(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('This is FullScreen Dialog'),
                      SizedBox(height: 15,),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Close'),
                      )
                    ],
                  ),
                ),
              ),
              child: Text('Show FullScreen Dialog'),
            ),

            TextButton(
              onPressed: () => showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Alert Dialog title'),
                  content: Text('Alert dialog Contain Description'),
                  actions: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () => Navigator.pop(context,'Cancel'), 
                          child: Text('Cancel')
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context,'OK'), 
                          child: Text('OK')
                        )
                      ],
                    )
                  ],
                ),
              ), 
              child: Text('show Dialog')
            )




          ],
        ),
      ),
    );
  }
}