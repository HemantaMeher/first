import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {

  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  String val = '';
  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(controller1.text.isEmpty && controller2.text.isEmpty){
            val = 'Enter Username & Password';
          } else if(controller1.text.isEmpty){
            val = 'Enter Username';
          } else if(controller2.text.isEmpty){
            val = 'Enter Password';
          } else{
            val = 'Login Succssful';
          }
          setState(() {
            
          });
        }
      ),
      appBar: AppBar(title: Text('Text Field'),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Text Field'),
              TextField(
                controller: controller1,
                decoration: InputDecoration(
                  hintText: 'Username'
                ),
              ),
              TextField(
                controller: controller2,
                obscureText: pass,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: IconButton(onPressed: (){
                    if(pass == false){
                      setState(() {
                        pass = true;
                      });
                    }else{
                      setState(() {
                        pass = false;
                      });
                    }
                  }, icon: Icon(Icons.remove_red_eye))
                ),
              ),
              Text(val,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue),),
              SizedBox(height: 20,),

              Text('TextField maxLine: '),
              TextField(
                controller: controller,
                maxLines: 5,
              ),
              SizedBox(height: 10,),

              Text('TextField maxLength: '),
              TextField(
                controller: controller,
                maxLength: 10,
              ),
              SizedBox(height: 10,),

              Text('TextField style: TextStyle() '),
              TextField(
                controller: controller,
                style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),

              Text('TextField textCapitalization: TextCapitalization.word '),
              TextField(
                controller: controller,
                textCapitalization: TextCapitalization.words,
              ),
              SizedBox(height: 10,),

              Text('TextField textCapitalization: TextCapitalization.none '),
              TextField(
                controller: controller,
                textCapitalization: TextCapitalization.none,
              ),
              SizedBox(height: 10,),

              Text('TextField textCapitalization: TextCapitalization.sentences '),
              TextField(
                controller: controller,
                textCapitalization: TextCapitalization.sentences,
              ),
              SizedBox(height: 10,),

              Text('TextField textCapitalization: TextCapitalization.charecters '),
              TextField(
                controller: controller,
                textCapitalization: TextCapitalization.characters,
              ),
              SizedBox(height: 10,),

              Text('TextField textAlign: TextAlign.center '),
              TextField(
                controller: controller,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),

              Text('TextField textDirection: TextDirection '),
              TextField(
                controller: controller,
                textDirection: TextDirection.rtl,
              ),
              SizedBox(height: 10,),

              Text('TextField toolBarOption: '),
              TextField(
                controller: controller,
                toolbarOptions: ToolbarOptions(
                  copy: false, paste: false, cut: true,selectAll: true,
                ),
              ),
              SizedBox(height: 10,),

              Text('TextField showCursor: false, readOnly: true'),
              TextField(
                controller: controller,
                showCursor: false,
                readOnly: false,
              ),
              SizedBox(height: 10,),

              Text('TextField autoFocous: false '),
              TextField(
                controller: controller,
                autofocus: false,
              ),
              SizedBox(height: 10,),

              Text('TextField CursorOption '),
              TextField(
                controller: controller,
                cursorRadius: Radius.circular(20),
                cursorWidth: 20,
                cursorColor: Colors.pink,
                cursorHeight: 30,
              ),
              SizedBox(height: 10,),

              Text('TextField keyboardType '),
              TextField(
                controller: controller,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10,),

              Text('TextField decoration '),
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: 'hello',
                  // prefix: Container(height: 10,width: 10,color: Colors.pink,),
                  prefixIcon: Icon(Icons.home),
                  // prefixText: 'nuhjuuu',

                ),
              ),







              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}