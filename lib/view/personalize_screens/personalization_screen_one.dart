import 'package:flutter/material.dart';
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
        body: const SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(),
                  Text(AppStrings.skip),
                ],
              )
            ],
          ),
        ),
        bottomSheet: BottomSheet(
          onClosing: () => setState(() {}),
          builder: (context) {
            return Container(
              width: double.infinity,
              height: 600,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: const Column(
                children: [
                  Text(AppStrings.username),
                  AppTextField(),
                ],
              ),
            );
          },
        ));
  }
}
