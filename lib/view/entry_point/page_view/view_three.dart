import 'package:flutter/material.dart';

import '../../../res/common/app_button.dart';
import '../../../res/constant/app_assets.dart';
import '../../../res/constant/app_color.dart';
import '../../../res/constant/app_strings.dart';
import '../../../route/routes_name.dart';

class ViewThree extends StatelessWidget {
  const ViewThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.pageViewImageThree,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 15,
        ),
        const Text(
          textAlign: TextAlign.center,
          AppStrings.viewThreeTextOne,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: AppColors.appColor,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 18,
        ),
        AppButton(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(context, RoutesName.logInScreen, (route) => false);
            debugPrint("Log In Screen --> ");
          },
          text: AppStrings.buttonTextTwo,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 15,
        ),
        const Text(
          textAlign: TextAlign.center,
          AppStrings.viewThreeTextTwo,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: AppColors.appColor,
          ),
        ),
      ],
    );
  }
}
