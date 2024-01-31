import 'package:family_tree/constants/path_icons.dart';
import 'package:family_tree/constants/path_images.dart';
import 'package:family_tree/styles/app_colors.dart';
import 'package:family_tree/styles/app_texts.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/clan_model.dart';

class ProfileClanPage extends StatefulWidget {
  final ClanList user;

  const ProfileClanPage({super.key, required this.user});

  @override
  State<ProfileClanPage> createState() => _ProfileClanPageState();
}

class _ProfileClanPageState extends State<ProfileClanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: Text(
          'Chi tiết gia phả',
          style: AppTexts.heading4.copyWith(color: AppColors.whiteColor, fontWeight: FontWeight.w600),
        ),
        leadingWidth: 80,
        leading: Center(
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(9999), color: AppColors.whiteColor),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: AppColors.greyColor,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.symmetric(vertical: 8),
              color: AppColors.whiteColor,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(border: Border.all(color: AppColors.darkGreenColor, width: 2), shape: BoxShape.circle),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(Radius.circular(9999)),
                              child: Image.asset(
                                widget.user.image,
                                fit: BoxFit.cover,
                                height: 86,
                                width: 86,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                          right: 10,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset(PathImage.iconShare),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                'Chia sẻ',
                                style: AppTexts.heading5,
                              )
                            ],
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.user.userName,
                    style: AppTexts.heading4.copyWith(color: AppColors.greyColor, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        PathImage.iconGrUser,
                        width: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${widget.user.member.toString()} thành viên',
                        style: AppTexts.heading5,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'ID: 77nh',
                        style: AppTexts.heading5.copyWith(color: AppColors.greyColor),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              color: AppColors.whiteColor,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(
                  'Thông tin',
                  style: AppTexts.heading4,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset(
                          PathIcons.iconBlur,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SvgPicture.asset(
                          PathIcons.iconDate,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SvgPicture.asset(
                          PathIcons.iconAddress,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Người tạo',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Ngày tạo',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Địa chỉ',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.user.creatorName,
                          style: AppTexts.heading5,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          widget.user.dayCreater,
                          style: AppTexts.heading5,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          widget.user.address,
                          style: AppTexts.heading5,
                        )
                      ],
                    ),
                  ],
                ),
              ]),
            ),
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              color: AppColors.whiteColor,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(
                  'Thông tin',
                  style: AppTexts.heading4,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  widget.user.biography,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                )
              ]),
            ),
            Container(
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: AppColors.primaryColor, width: 2)),
                  color: AppColors.whiteColor,
                ),
                child: Center(
                  child: Text(
                    'Cây gia phả',
                    style: AppTexts.heading5.copyWith(color: AppColors.primaryColor),
                  ),
                )),
            Center(
              heightFactor: 1.2,
              child: Image.asset(widget.user.imageTree),
            )
          ],
        ),
      ),
    );
  }
}
