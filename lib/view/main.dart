import 'package:flutter/material.dart';
import 'package:yoga_app/res/constant/app_color.dart';
import 'package:yoga_app/view/personalize_screens/personalization_screen_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'yoga baba',

      theme: ThemeData(
        fontFamily: "inter",
        primaryColor: AppColors.materialColor,
        primarySwatch: AppColors.materialColor,
      ),
      // routes: appRoutes,
      // initialRoute: RoutesName.splashScreen,
      home: const PersonalizationScreenOne(),
    );
  }
}
