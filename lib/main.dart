import 'package:first/Animations/DefaultAnimation/Animation_Home.dart';
import 'package:first/appBarDesign.dart';
import 'package:first/drawerDesign.dart';
import 'package:first/json/jsonLocal.dart';
import 'package:first/json/json_internet.dart';
import 'package:first/json/myNewsApiModel.dart';
import 'package:first/widgets/Getx_Navigator/getx_navigator.dart';
import 'package:first/widgets/GoogleFonts.dart';
import 'package:first/widgets/NavigatorScreen/first_screen.dart';
import 'package:first/widgets/NavigatorScreen/second_screen.dart';
import 'package:first/widgets/ScaffolsWidget.dart';
import 'package:first/gridView.dart';
import 'package:first/widgets/SharedPreferences.dart';
import 'package:first/widgets/appbar.dart';
import 'package:first/widgets/button_screen.dart';
import 'package:first/widgets/cachedNetworkPageWidget.dart';
import 'package:first/widgets/card_screen.dart';
import 'package:first/widgets/circle_avatar.dart';
import 'package:first/widgets/column_and_row.dart';
import 'package:first/widgets/constrained_widget.dart';
import 'package:first/widgets/containerWidget.dart';
import 'package:first/widgets/cupertino_dialog_box.dart';
import 'package:first/widgets/data_table.dart';
import 'package:first/widgets/demo3.dart';
import 'package:first/widgets/divider_screen.dart';
import 'package:first/widgets/drawer_screen.dart';
import 'package:first/widgets/drop_down_button_screen.dart';
import 'package:first/widgets/elevated_button.dart';
import 'package:first/widgets/expanded.dart';
import 'package:first/widgets/expansion_tile.dart';
import 'package:first/widgets/fitted_box.dart';
import 'package:first/widgets/flexable.dart';
import 'package:first/widgets/floating_action_button.dart';
import 'package:first/widgets/geoLocator.dart';
import 'package:first/widgets/gesture_detector.dart';
import 'package:first/widgets/getx_snackbar.dart';
import 'package:first/widgets/gridView_count.dart';
import 'package:first/widgets/gridView_extend.dart';
import 'package:first/widgets/gridview.dart';
import 'package:first/widgets/gridview_builder.dart';
import 'package:first/widgets/icon_button.dart';
import 'package:first/widgets/icon_screen.dart';
import 'package:first/widgets/icon_text.dart';
import 'package:first/widgets/image_screen.dart';
import 'package:first/widgets/indicators_screen.dart';
import 'package:first/widgets/ink_well.dart';
import 'package:first/widgets/listView_builder.dart';
import 'package:first/widgets/listView_custom.dart';
import 'package:first/widgets/listView_separated.dart';
import 'package:first/widgets/list_tile.dart';
import 'package:first/widgets/list_view.dart';
import 'package:first/widgets/lottie.dart';
import 'package:first/widgets/nav_bar_screen.dart';
import 'package:first/widgets/navigator_screen.dart';
import 'package:first/widgets/other_button.dart';
import 'package:first/widgets/page_view.dart';
import 'package:first/widgets/radio_button.dart';
import 'package:first/widgets/rich_text.dart';
import 'package:first/widgets/safeArea.dart';
import 'package:first/widgets/sliverappbarWidgets.dart';
import 'package:first/widgets/snackbar_screen.dart';
import 'package:first/widgets/stack_and_align.dart';
import 'package:first/widgets/statefulScreen.dart';
import 'package:first/widgets/statelessScreen.dart';
import 'package:first/widgets/switch_button.dart';
import 'package:first/widgets/tab_bar.dart';
import 'package:first/widgets/table_screen.dart';
import 'package:first/widgets/textFormField.dart';
import 'package:first/widgets/text_screen.dart';
import 'package:first/widgets/textfield_screen.dart';
import 'package:first/widgets/wrap_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Animations/Animation_Main_Screen.dart';
import 'Assignment_frame/frame1.dart';
import 'Assignment_frame/frame2.dart';
import 'GetxTutorial/getxSnackbar.dart';
import 'Responsive/splashscreen.dart';
import 'demo.dart';
import 'demo2.dart';
import 'json/myNewsApi.dart';
import 'json/tApiThree.dart';
import 'json/tApiTwo.dart';
import 'json/task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  QRCodeScanner(),
        // initialRoute: "/nave",
        // routes: {
        //   "/nave": (BuildContext context) => NavigatorScreen(),
        //   "/first": (BuildContext context) => FirstScreen(),
        //   "/second": (BuildContext context) => SecondScreen()
        // },
      ),
    );

    /*return ResponsiveScreenUtilInit(
      designSize: Size(375, 812),
      allowFontScaling: false,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  NewsApiTwo(),
        // initialRoute: "/nave",
        // routes: {
        //   "/nave": (BuildContext context) => NavigatorScreen(),
        //   "/first": (BuildContext context) => FirstScreen(),
        //   "/second": (BuildContext context) => SecondScreen()
        // },
      ),
    );*/
    /*return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  NewsApiTwo(),
      // initialRoute: "/nave",
      // routes: {
      //   "/nave": (BuildContext context) => NavigatorScreen(),
      //   "/first": (BuildContext context) => FirstScreen(),
      //   "/second": (BuildContext context) => SecondScreen()
      // },
    );*/
  }
}
