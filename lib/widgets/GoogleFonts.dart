import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class GoogleFontsScreen extends StatefulWidget {
  const GoogleFontsScreen({Key? key}) : super(key: key);

  @override
  State<GoogleFontsScreen> createState() => _GoogleFontsScreenState();
}

class _GoogleFontsScreenState extends State<GoogleFontsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Fonts'),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hemanta',
            style: GoogleFonts.aBeeZee(
              textStyle: TextStyle(color: Colors.cyanAccent,fontSize: 30,fontWeight: FontWeight.w700)
            ),
          ),
          SizedBox(height: 20,),
          Text(
            'Hemanta',
            style: TextStyle(color: Colors.cyanAccent,fontSize: 30)
          ),
        ],
      )),
    );
  }
}
