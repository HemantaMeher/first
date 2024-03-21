import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  final _formKey = GlobalKey<FormState>();
  String? name;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Form Field'),),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [

                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.cyanAccent)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextFormField(
                          onSaved: (v){
                            name = v;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.blue.shade50,
                              hintText: 'Enter Name',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.green,
                                      width: 2
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.pink,
                                      width: 2
                                  )
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.red,width: 2)
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.orange,width: 2)
                              )

                          ),
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'Enter name';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          onSaved: (v){
                            password = v;
                          },
                          decoration: InputDecoration(
                            filled: true,
                              fillColor: Colors.blue.shade50,
                              hintText: 'Password',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.green,
                                      width: 2
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.pink,
                                      width: 2
                                  )
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.red,width: 2)
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.orange,width: 2)
                              )
                          ),
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'Enter Password';
                            }
                          },
                        ),
                        SizedBox(height: 25,),
                        SizedBox(
                          width: 300,
                          height: 50,
                          child: TextButton(
                              onPressed: () {
                                if(_formKey.currentState!.validate()){
                                  _formKey.currentState!.save();
                                  print(name);
                                  print(password);
                                }
                              },
                              child: Text('Validet'),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  strokeAlign: -4,
                                  color: Colors.cyanAccent,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10)
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
