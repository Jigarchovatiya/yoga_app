import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:yoga_app/res/common/app_button.dart';
import 'package:yoga_app/res/constant/app_assets.dart';
import 'package:yoga_app/res/constant/app_strings.dart';
import 'package:yoga_app/route/routes_name.dart';

import '../../res/constant/app_color.dart';

class OtpLogInScreen extends StatefulWidget {
  const OtpLogInScreen({Key? key}) : super(key: key);

  @override
  State<OtpLogInScreen> createState() => _OtpLogInScreenState();
}

class _OtpLogInScreenState extends State<OtpLogInScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBar,
        foregroundColor: AppColors.appColor,
        leading: const BackButton(),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(AppImages.otpImage, height: height / 3),
              ),
              SizedBox(height: height / 20),
              const Text(
                textAlign: TextAlign.center,
                AppStrings.verifyText,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              OTPTextField(
                otpFieldStyle: OtpFieldStyle(
                  borderColor: AppColors.black,
                  focusBorderColor: AppColors.materialColor,
                ),
                margin: const EdgeInsets.only(top: 30),
                length: 6,
                isDense: true,
                width: 350,
                fieldWidth: 40,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 5,
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.materialColor,
                ),
              ),
              SizedBox(
                height: height / 25,
              ),
              AppButton(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.personalizationScreen);
                },
                text: AppStrings.continu,
              ),
              SizedBox(height: height / 30),
              const Text(
                AppStrings.resendOtp,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
              SizedBox(height: height / 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.sms,
                    height: 24,
                  ),
                  SizedBox(width: width / 80),
                  const Text(
                    AppStrings.smsText,
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                  SizedBox(width: width / 20),
                  Image.asset(
                    AppImages.mail,
                    height: 24,
                  ),
                  SizedBox(width: width / 80),
                  const Text(
                    AppStrings.mailText,
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
