import 'package:family_tree/styles/app_colors.dart';
import 'package:family_tree/styles/app_texts.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  final Function()? onTap;
  const Account({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: onTap,
              child: Container(
                height: 48,
                width: 48,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.whiteColor),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Xin chào,',
                  style: AppTexts.heading5
                      .copyWith(color: AppColors.whiteColor, height: 1.3),
                ),
                Text(
                  'Võ Thị Thu Thúy!',
                  style: AppTexts.heading5.copyWith(
                      color: AppColors.whiteColor,
                      height: 1.3,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: 26,
              width: 78,
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(99)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(99)),
                    child: const Icon(Icons.add,
                        color: AppColors.whiteColor, size: 15),
                  ),
                  Text(
                    'Tạo mới',
                    style: AppTexts.heading5
                        .copyWith(color: AppColors.brownColor, fontSize: 12),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            Stack(
              children: [
                const Icon(Icons.notification_important_sharp,
                    color: AppColors.whiteColor),
                Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(99)),
                      child: Center(
                        child: Text(
                          '1',
                          style: AppTexts.heading5.copyWith(
                              color: AppColors.whiteColor, fontSize: 10),
                        ),
                      ),
                    ))
              ],
            ),
          ],
        )
      ],
    );
  }
}
