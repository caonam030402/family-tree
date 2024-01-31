import 'package:family_tree/constants/path_images.dart';
import 'package:family_tree/styles/app_colors.dart';
import 'package:family_tree/styles/app_texts.dart';
import 'package:flutter/material.dart';

class CardFamily extends StatelessWidget {
  final double quantity;
  final String title;
  final String image;
  final String location;

  const CardFamily(
      {super.key,
      required this.quantity,
      required this.title,
      required this.location,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.brownColor.withOpacity(0.06),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(
              image,
              height: 100,
              width: MediaQuery.sizeOf(context).width / 2 - 35,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  child: Text(
                    title,
                    style: AppTexts.heading5.copyWith(
                        color: AppColors.blackColor.withOpacity(0.7),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Image.asset(
                      PathImage.im_member,
                      height: 19,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      '${quantity.ceil().toString()} thành viên',
                      style: AppTexts.heading6
                          .copyWith(color: AppColors.greyColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Image.asset(
                      PathImage.im_location,
                      height: 19,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      width: 120,
                      child: Text(
                        location,
                        style: AppTexts.heading6
                            .copyWith(color: AppColors.greyColor),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
