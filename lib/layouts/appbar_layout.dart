import 'package:family_tree/constants/path_images.dart';
import 'package:family_tree/styles/app_colors.dart';
import 'package:family_tree/styles/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../constants/path_icons.dart';
import '../services/providers/focusSearch_provider.dart';
import '../services/providers/search_provider.dart';
import '../widgets/avatar_widget.dart';

class AppBarLayout extends StatelessWidget implements PreferredSizeWidget {
  final bool isFocus;

  const AppBarLayout({
    Key? key,
    required this.isFocus,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(isFocus ? 290 : 70);

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    final isFocus = context.watch<FocusSearchProvider>().isFocus;

    return AppBar(
      backgroundColor: isFocus ? AppColors.whiteColor : AppColors.primaryColor,
      elevation: 0,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: Stack(
        children: [
          isFocus
              ? Image.asset(
                  PathImage.bgAppBar_1,
                  width: mq.width,
                  fit: BoxFit.cover,
                )
              : const SizedBox(),
          isFocus
              ? Positioned(
                  left: 0,
                  top: 0,
                  child: Image.asset(
                    PathImage.bgAppBar_2,
                  ),
                )
              : const SizedBox(),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isFocus
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Card(
                            elevation: 0,
                            margin: EdgeInsets.zero,
                            color: Colors.transparent,
                            child: ListTile(
                              leading: const AvatarWidget(image: PathImage.avatarUser, size: 50),
                              title: Text(
                                'Xin Chào',
                                style: AppTexts.heading5.copyWith(fontWeight: FontWeight.w400, color: AppColors.whiteColor),
                              ),
                              subtitle: Container(
                                constraints: BoxConstraints(
                                  maxWidth: mq.width * 0.45,
                                ),
                                child: Text(
                                  'Võ Thị Thu Thúy!',
                                  style: AppTexts.heading4.copyWith(color: AppColors.whiteColor),
                                ),
                              ),
                            ),
                          )),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(9999)),
                                border: Border.all(color: AppColors.brownColor, width: 1),
                                color: AppColors.whiteColor,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.circlePlus,
                                    color: AppColors.primaryColor,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Tạo mới',
                                    style: AppTexts.heading5.copyWith(color: AppColors.brownColor),
                                  )
                                ],
                              ),
                            ),
                          ),
                          IconButton(onPressed: () {}, icon: SvgPicture.asset(PathIcons.iconBell))
                        ],
                      )
                    : const SizedBox(),
                Container(
                  color: isFocus ? Colors.transparent : AppColors.primaryColor,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      isFocus
                          ? const SizedBox()
                          : Container(
                              width: 40,
                              height: 40,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: const BoxDecoration(color: AppColors.whiteColor, borderRadius: BorderRadius.all(Radius.circular(999))),
                              child: IconButton(
                                  onPressed: () {
                                    Provider.of<FocusSearchProvider>(context, listen: false).handleFocusValue(true);
                                    Provider.of<SearchProvider>(context, listen: false).changeSearchValue('');
                                  },
                                  padding: EdgeInsets.zero,
                                  icon: const Icon(
                                    Icons.arrow_back_ios_sharp,
                                    color: AppColors.greyColor,
                                  )),
                            ),
                      Expanded(
                        child: SizedBox(
                          height: 40,
                          child: TextField(
                            onTap: () {
                              Provider.of<FocusSearchProvider>(context, listen: false).handleFocusValue(false);
                            },
                            onChanged: (value) => {Provider.of<SearchProvider>(context, listen: false).changeSearchValue(value)},
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                              hintText: 'Tìm kiếm theo tên phả hệ',
                              hintStyle: const TextStyle(color: AppColors.greyColor, fontWeight: FontWeight.w400, fontSize: 12),
                              fillColor: AppColors.whiteColor,
                              prefixIcon: const Icon(
                                Icons.search,
                                color: AppColors.greyColor,
                              ),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.primaryColor,
                                  ),
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    color: AppColors.whiteColor,
                                    size: 24,
                                  ),
                                ),
                              ),
                              filled: true,
                              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(9999)), borderSide: BorderSide.none),
                            ),
                            style: const TextStyle(color: AppColors.blackColor, fontWeight: FontWeight.w400, fontSize: 12),
                          ),
                        ),
                      ),
                      isFocus
                          ? const SizedBox()
                          : IconButton(
                              onPressed: () {},
                              icon: FaIcon(FontAwesomeIcons.sliders, color: AppColors.whiteColor),
                            ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                isFocus
                    ? ImageSlideshow(
                        width: mq.width,
                        height: 150,
                        initialPage: 0,
                        indicatorColor: AppColors.primaryColor,
                        indicatorBackgroundColor: AppColors.whiteColor,
                        indicatorPadding: 8,
                        autoPlayInterval: 3000,
                        isLoop: true,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                PathImage.imgFamily_1,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                PathImage.imgFamily_2,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                PathImage.imgFamily_3,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
