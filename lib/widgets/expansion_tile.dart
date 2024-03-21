import 'package:flutter/material.dart';
class ExpansionTileScreen extends StatefulWidget {
  const ExpansionTileScreen({Key? key}) : super(key: key);

  @override
  State<ExpansionTileScreen> createState() => _ExpansionTileScreenState();
}

class _ExpansionTileScreenState extends State<ExpansionTileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Tile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionTile(
              leading: Icon(Icons.person),
              title: Text('Hemanta'),
              subtitle: Text('hemanta kumar meher'),
              trailing: Icon(Icons.arrow_drop_down_circle_outlined),
            ),
          //  ExpansionTile with backgroundColor,TextColor,iconColor
            ExpansionTile(
              title: Text('Bajrang'),
              subtitle: Text('Name of the Person'),
              backgroundColor: Colors.red,
              textColor: Colors.cyanAccent,
              iconColor: Colors.green,
              children: [
                Text('Flutter Logo'),
                FlutterLogo(
                  size: 200,
                )
              ],
            ),
            //  ExpansionTile with collapsBackgroundColor,collapsTextColor,collapsIconColor
            ExpansionTile(
              title: Text('Bajrang'),
              subtitle: Text('Name of the Person'),
              collapsedBackgroundColor: Colors.cyanAccent,
              collapsedIconColor: Colors.yellow,
              collapsedTextColor: Colors.pink,
              backgroundColor: Colors.red,
              textColor: Colors.cyanAccent,
              iconColor: Colors.green,
              children: [
                Text('Flutter Logo'),
                FlutterLogo(
                  size: 200,
                )
              ],
            ),
            SizedBox(height: 20,),
            //  ExpansionTile with childrenPadding, titlePadding
            ExpansionTile(
              childrenPadding: EdgeInsets.all(50),
              tilePadding: EdgeInsets.all(50),
              collapsedBackgroundColor: Colors.cyanAccent,
              collapsedIconColor: Colors.yellow,
              collapsedTextColor: Colors.pink,
              backgroundColor: Colors.red,
              textColor: Colors.cyanAccent,
              iconColor: Colors.green,
              title: Text('Bajrang'),
              subtitle: Text('Name of the Person'),
              children: [
                Text('Flutter Logo'),
                FlutterLogo(
                  size: 200,
                )
              ],
            ),
            SizedBox(height: 20,),
            ExpansionTile(
              initiallyExpanded: true,
              title: Text("Expansion Tiles"),
              subtitle: Text("Subtitle of Exapnsion Tile"),
              collapsedBackgroundColor: Colors.yellowAccent,
              backgroundColor: Colors.green,
              children: [
                Text('Flutter logo'),
                FlutterLogo(
                  size: 200,
                )
              ],
            ),
            SizedBox(height: 20,),
            ExpansionTile(
              // initiallyExpanded: true,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("Expansion Tiles"),
              subtitle: Text("Subtitle of Exapnsion Tile"),
              collapsedBackgroundColor: Colors.yellowAccent,
              backgroundColor: Colors.green,
              children: [
                Text('Flutter logo'),
                FlutterLogo(
                  size: 200,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
