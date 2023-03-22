import 'package:flutter/material.dart';

import '../../../res/common/app_button.dart';
import '../../../res/constant/app_images.dart';
import '../../../res/constant/app_strings.dart';
import '../../../res/constant/color_constant.dart';
import '../../../route/routes_name.dart';

class ViewTwo extends StatelessWidget {
  const ViewTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.pageViewImageTwo,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 15,
        ),
        const Text(
          textAlign: TextAlign.center,
          AppStrings.viewTwoTextOne,
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
            Navigator.pushNamed(
              context,
              RoutesName.viewThree,
            );
          },
          text: AppStrings.next,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 15,
        ),
        const Text(
          textAlign: TextAlign.center,
          AppStrings.viewTwoTextTwo,
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
