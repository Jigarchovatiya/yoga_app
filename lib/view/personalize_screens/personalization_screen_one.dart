import 'package:flutter/material.dart';
import 'package:yoga_app/res/common/app_app_bar.dart';
import 'package:yoga_app/res/common/app_textfield.dart';
import 'package:yoga_app/res/constant/app_color.dart';
import 'package:yoga_app/res/constant/app_strings.dart';

class PersonalizationScreenOne extends StatefulWidget {
  const PersonalizationScreenOne({Key? key}) : super(key: key);

  @override
  State<PersonalizationScreenOne> createState() => _PersonalizationScreenOneState();
}

class _PersonalizationScreenOneState extends State<PersonalizationScreenOne> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.personalizeBackground,
      appBar: AppAppbar(
        appBar: AppBar(),
        action: const Text(AppStrings.skip),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    AppStrings.title,
                    style: TextStyle(color: AppColors.buttonColor, fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: height / 80,
                  ),
                  const Text(
                    AppStrings.description,
                    style: TextStyle(color: AppColors.descriptionColor, fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            // const Spacer(),
            Stack(children: [
              Container(
                height: height / 1.4,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: const Column(
                  children: [
                    Text(AppStrings.username),
                    AppTextField(),
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
