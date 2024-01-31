import 'package:family_tree/styles/app_colors.dart';
import 'package:family_tree/styles/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Category extends StatelessWidget {
  final String label;
  final String image;
  const Category({super.key, required this.label, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 46,
            width: 46,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(99),
              border: Border.all(
                  width: 1,
                  color: AppColors.primaryColor,
                  style: BorderStyle.solid),
            ),
            child: Image.asset(image),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            label,
            style: AppTexts.heading5.copyWith(color: AppColors.greyColor),
          )
        ],
      ),
    );
  }
}
