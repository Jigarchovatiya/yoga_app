import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yoga_app/res/constant/app_images.dart';
import 'package:yoga_app/res/constant/app_strings.dart';
import 'package:yoga_app/route/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context, RoutesName.logInScreen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE1A9EA),
              Color(0xFFEAA8CB),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(height: MediaQuery.of(context).size.height / 25),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  AppStrings.yogaBliss,
                  style: TextStyle(
                    color: Color(0xFFB95DC8),
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                  ),
                ),
              ),
              const Text(
                AppStrings.bodyMind,
                style: TextStyle(
                  color: Color(0xFF51275E),
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3.5,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 110,
                margin: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFCA4384),
                      Color(0xFFB44BC5),
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  AppImages.guruIcon,
                  height: 80,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
              ),
              const Text(
                AppStrings.bottomText,
                style: TextStyle(
                  color: Color(0xFF51275E),
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
