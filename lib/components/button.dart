import 'package:family_tree/styles/app_colors.dart';
import 'package:family_tree/styles/app_texts.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final bool isGreen;
  const Button({
    super.key,
    required this.title,
    this.onTap,
    this.isGreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 53,
        decoration: BoxDecoration(
          color: isGreen == false
              ? AppColors.primaryColor
              : AppColors.darkGreenColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: AppTexts.heading4.copyWith(color: AppColors.whiteColor),
            )
          ],
        ),
      ),
    );
  }
}
