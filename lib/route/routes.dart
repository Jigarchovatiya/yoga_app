import 'package:flutter/material.dart';
import 'package:yoga_app/route/routes_name.dart';
import 'package:yoga_app/view/entry_point/continue_with_screen.dart';
import 'package:yoga_app/view/entry_point/onboarding_screen.dart';
import 'package:yoga_app/view/entry_point/page_view/view_one.dart';
import 'package:yoga_app/view/entry_point/page_view/view_three.dart';
import 'package:yoga_app/view/entry_point/page_view/view_two.dart';
import 'package:yoga_app/view/splash_screen.dart';

import '../view/entry_point/log_in_screen.dart';

Map<String, WidgetBuilder> appRoutes = {
  RoutesName.splashScreen: (context) => const SplashScreen(),
  RoutesName.logInScreen: (context) => const LogInScreen(),
  RoutesName.viewOne: (context) => const ViewOne(),
  RoutesName.viewTwo: (context) => const ViewTwo(),
  RoutesName.viewThree: (context) => const ViewThree(),
  RoutesName.onBoarding: (context) => const OnBoardingScreen(),
  RoutesName.continueWithScreen: (context) => const ContinueWithScreen(),
  // RoutesName.checkOutTwo: (context) => const CheckOutTwo(),
  // RoutesName.confirmEmail: (context) => const ConfirmEmail(),
  // RoutesName.emptyCart: (context) => const EmptyCart(),
  // RoutesName.home: (context) => const Home(),
  // RoutesName.favStore: (context) => const FavStore(),
  // RoutesName.cart: (context) => const Cart(),
  // RoutesName.profile: (context) => const Profile(),
  // RoutesName.bottomBar: (context) => const BottomBar(),
  // RoutesName.section: (context) => const Section(),
};
