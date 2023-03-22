import 'package:flutter/material.dart';
import 'package:yoga_app/res/constant/color_constant.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final void Function()? onTap;
  const AppButton({
    Key? key,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 44,
        width: 358,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
