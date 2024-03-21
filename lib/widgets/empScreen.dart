import 'package:flutter/material.dart';
class EmpScreen extends StatefulWidget {
  const EmpScreen({Key? key}) : super(key: key);

  @override
  State<EmpScreen> createState() => _EmpScreenState();
}

class _EmpScreenState extends State<EmpScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
            onPressed: openDrawer, 
            icon: Icon(Icons.menu)
        ),
      ),
      drawer: Drawer(),
      body: Center(child: Text("Hello"),),
    );
  }
}
