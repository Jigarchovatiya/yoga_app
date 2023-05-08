import 'package:flutter/material.dart';

import '../route/routes.dart';
import '../route/routes_name.dart';

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
        primarySwatch: Colors.blue,
      ),
      routes: appRoutes,
      initialRoute: RoutesName.splashScreen,
      // home: const SplashScreen(),
    );
  }
}
