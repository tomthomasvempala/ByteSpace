
// import 'package:byteSpace/Pages/MainScreen/mainScreen.dart';
import 'package:byteSpace/Pages/MainScreen/mainScreen.dart';
import 'package:byteSpace/size_config.dart';
import 'package:byteSpace/themeData.dart';
import 'package:flutter/material.dart';

import 'Pages/LandingPage/landingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // Provider.of<ThemeChanger>(context).loadFromPrefs();
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme:
                TextTheme(bodyText2: TextStyle(color: AppTheme.darkBlue)),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: LandingPage(),
        );
      });
    });
  }
}


