import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yoga_app/res/constant/app_strings.dart';
import 'package:yoga_app/res/constant/color_constatnt.dart';
import 'package:yoga_app/res/constant/extensions/extensions.dart';
import 'package:yoga_app/route/routes_name.dart';
import 'package:yoga_app/view/entry_point/page_view/view_one.dart';
import 'package:yoga_app/view/entry_point/page_view/view_three.dart';

import 'page_view/view_two.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(initialPage: 0);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: AppColors.appColor,
        backgroundColor: AppColors.appBar,
        leading: const BackButton(),
        actions: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, RoutesName.logInScreen, (route) => false);
                debugPrint("Log In Screen --> ");
              },
              child: const Text(
                AppStrings.skip,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
              ),
            ),
          ),
          15.0.addWSpace(),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: pageController,
              children: const [
                ViewOne(),
                ViewTwo(),
                ViewThree(),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.1,
                ),
                Center(
                  child: SmoothPageIndicator(
                      controller: pageController, // PageController
                      count: 3,
                      effect: const JumpingDotEffect(activeDotColor: Color(0xFFB95DC8), dotHeight: 10, dotWidth: 10), // your preferred effect
                      onDotClicked: (index) {}),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
