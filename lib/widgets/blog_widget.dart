import 'package:family_tree/constants/path_images.dart';
import 'package:family_tree/styles/app_colors.dart';
import 'package:family_tree/styles/app_texts.dart';
import 'package:flutter/material.dart';

class BlogWidget extends StatelessWidget {
  final String img;
  final String name;
  final int member;
  final String address;

  const BlogWidget({super.key, required this.img, required this.name, required this.member, required this.address});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: AppColors.whiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                child: Image.asset(
                  img,
                  width: double.maxFinite,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                name,
                style: AppTexts.heading5.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 3,
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    PathImage.iconGrUser,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${member.toString()} thành viên',
                    style: const TextStyle(fontSize: 12),
                  )
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              Stack(
                children: [
                  Positioned(top: 5, child: Image.asset(PathImage.iconAddress, width: 20)),
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    child: Text(
                      address,
                      style: const TextStyle(fontSize: 12),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
