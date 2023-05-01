import 'package:flutter/material.dart';
import 'package:yoga_app/route/routes_name.dart';
import 'package:yoga_app/view/splash_screen.dart';

import '../view/entry_point/log_in_screen.dart';

Map<String, WidgetBuilder> appRoutes = {
  RoutesName.splashScreen: (context) => const SplashScreen(),
  RoutesName.logInScreen: (context) => const LogInScreen(),
  // RoutesName.signUpScreen: (context) => const SignUpScreen(),
  // RoutesName.searchError: (context) => const SearchError(),
  // RoutesName.success: (context) => const Success(),
  // RoutesName.selectScreen: (context) => const SelectScreen(),
  // RoutesName.checkOutOne: (context) => const CheckoutScreenOne(),
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
