import 'package:flutter/material.dart';
import 'package:yoga_app/res/constant/app_color.dart';
import 'package:yoga_app/res/constant/app_strings.dart';

import '../../res/constant/app_assets.dart';

class ContinueWithScreen extends StatefulWidget {
  final double? height;
  const ContinueWithScreen({
    Key? key,
    this.height,
  }) : super(key: key);

  @override
  State<ContinueWithScreen> createState() => _ContinueWithScreenState();
}

class _ContinueWithScreenState extends State<ContinueWithScreen> {
  List continueWithList = [
    {
      "image": "assets/icons/google.png",
      "title": "Continue With Google",
      "height": 24.0,
    },
    {
      "image": "assets/icons/facebook.png",
      "title": "Continue With Facebook",
      "height": 24.0,
    },
    {
      "image": "assets/icons/Vector.png",
      "title": "Continue With Apple",
      "height": 27.0,
    },
    {
      "image": "assets/icons/Gmail.png",
      "title": "Continue With Gmail",
      "height": 40.0,
    },
  ];
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
                    shape: BoxShape.circle),
                child: Image.asset(
                  AppImages.guruIcon,
                  height: 80,
                ),
              ),
              const Text(
                AppStrings.yogaBliss,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26, color: AppColors.yogaBliss),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.buttonColor, width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    onTap: () {
                      setState(() {});
                    },
                    leading: Image.asset(
                      continueWithList[index]["image"],
                      height: continueWithList[index]["height"],
                    ),
                    title: Text(
                      continueWithList[index]["title"],
                    ),
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
