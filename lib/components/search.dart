import 'package:family_tree/styles/app_colors.dart';
import 'package:family_tree/styles/app_texts.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(99), color: AppColors.whiteColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 12),
            child: const Center(
              child: Icon(
                Icons.search,
                size: 18,
                color: AppColors.greyColor,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 6, left: 5),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Tìm kiếm theo tên phả hệ',
                    hintStyle:
                        AppTexts.heading6.copyWith(color: AppColors.greyColor)),
              ),
            ),
          ),
          Container(
            height: 31,
            width: 31,
            margin: const EdgeInsets.only(right: 4),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.primaryColor),
            child: const Center(
              child: Icon(
                Icons.arrow_forward,
                color: AppColors.whiteColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
