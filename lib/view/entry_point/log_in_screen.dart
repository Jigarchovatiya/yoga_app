import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:yoga_app/res/common/app_button.dart';
import 'package:yoga_app/res/common/color_constatnt.dart';
import 'package:yoga_app/res/constant/app_strings.dart';

import '../../res/constant/app_images.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Stack(
                  children: [
                    Image.asset(AppImages.logInImage),
                    Positioned(
                      top: 10,
                      right: 20,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          AppStrings.skip,
                          style: TextStyle(color: AppColors.appColor, fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 120,
                      left: 30,
                      child: Text(
                        AppStrings.logInText,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.appColor),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: const [
                    Text(
                      AppStrings.logInTextTwo,
                      style: TextStyle(color: AppColors.appColor, fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    debugPrint(phone.completeNumber);
                  },
                ),
              ),
              Center(
                child: AppButton(
                  onTap: () {},
                  text: AppStrings.continu,
                ),
              ),
              const Center(
                child: Text(
                  AppStrings.connectWith,
                  style: TextStyle(color: AppColors.appColor, fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(AppImages.google, height: 24),
                      Image.asset(AppImages.fb, height: 24),
                      Image.asset(AppImages.apple, height: 27),
                      Image.asset(AppImages.gmail, height: 40),
                    ],
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
