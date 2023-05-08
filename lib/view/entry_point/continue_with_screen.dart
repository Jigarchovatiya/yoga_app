import 'package:flutter/material.dart';
import 'package:yoga_app/res/constant/app_strings.dart';
import 'package:yoga_app/res/constant/color_constatnt.dart';
import 'package:yoga_app/res/constant/extensions/extensions.dart';

import '../../res/constant/app_images.dart';

class ContinueWithScreen extends StatefulWidget {
  const ContinueWithScreen({Key? key}) : super(key: key);

  @override
  State<ContinueWithScreen> createState() => _ContinueWithScreenState();
}

class _ContinueWithScreenState extends State<ContinueWithScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBar,
        foregroundColor: AppColors.appColor,
        leading: const BackButton(),
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 110,
                margin: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xB5B44BC5),
                      Color(0xA1CA4384),
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  AppImages.guruIcon,
                  height: 80,
                ),
              ),
              const Text(
                AppStrings.yogaBliss,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26, color: AppColors.yogaBliss),
              ),
              ListView.separated(
                itemCount: 4,
                separatorBuilder: (context, index) => 20.0.addHSpace(),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(),
                  child: ListTile(
                    leading: Image.asset(""),
                    title: Text(""),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
