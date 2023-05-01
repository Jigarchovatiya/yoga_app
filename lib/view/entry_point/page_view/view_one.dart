import 'package:flutter/material.dart';
import 'package:yoga_app/res/common/app_button.dart';
import 'package:yoga_app/res/constant/app_images.dart';
import 'package:yoga_app/res/constant/app_strings.dart';

class ViewOne extends StatelessWidget {
  const ViewOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          AppImages.pageViewImageOne,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 15,
        ),
        const Text(
          textAlign: TextAlign.center,
          AppStrings.viewOneTextOne,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Color(0xFF51275E),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 18,
        ),
        AppButton(
          onTap: () {
            // Navigator.pushNamed(context, RoutesName.,);
          },
          text: AppStrings.buttonText,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 15,
        ),
        const Text(
          textAlign: TextAlign.center,
          AppStrings.viewOneTextTwo,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xFFA0A0A0),
          ),
        ),
      ],
    );
  }
}
