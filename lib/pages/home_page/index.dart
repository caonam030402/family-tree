import 'package:family_tree/configs/app_routes.dart';
import 'package:family_tree/constants/path_images.dart';
import 'package:family_tree/layouts/appbar_layout.dart';
import 'package:family_tree/pages/profileClan_page/index.dart';
import 'package:family_tree/services/providers/focusSearch_provider.dart';
import 'package:family_tree/services/providers/search_provider.dart';
import 'package:family_tree/services/apis/clan_api.dart';
import 'package:family_tree/styles/app_colors.dart';
import 'package:family_tree/styles/app_texts.dart';
import 'package:family_tree/widgets/blog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int result = listClan.length;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      updateSearchResult();
    });
  }

  void updateSearchResult() {
    final valueSearch = context.read<SearchProvider>().searchController;
    result = listClan
        .where((item) => item.userName
            .toLowerCase()
            .contains(valueSearch!.text.toLowerCase()))
        .toList()
        .length;
  }

  @override
  Widget build(BuildContext context) {
    final valueSearch = context.read<SearchProvider>().searchController;
    final isFocus = context.watch<FocusSearchProvider>().isFocus;

    return Scaffold(
      appBar: AppBarLayout(isFocus: isFocus),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (isFocus)
              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(bottom: 10),
                color: AppColors.whiteColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          PathImage.iconMenu,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Danh mục',
                          style: AppTexts.heading4
                              .copyWith(fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, AppRoutes.signUp);
                              },
                              child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.only(bottom: 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColors.primaryColor,
                                          width: 1),
                                      shape: BoxShape.circle,
                                      color: const Color(0xffFDE7BB)),
                                  child: Image.asset(
                                    PathImage.iconTreeFamily,
                                    width: 35,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            const Text(
                              'Tạo cây phả hệ',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: AppColors.primaryColor,
                                        width: 1),
                                    shape: BoxShape.circle,
                                    color: const Color(0xffFDE7BB)),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, AppRoutes.myTree);
                                  },
                                  child: Image.asset(
                                    PathImage.iconFamily,
                                    width: 35,
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            const Text(
                              'Cây phả hệ của tôi',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        isFocus
                            ? 'Khám phá Gia tộc'
                            : result == 0
                                ? 'Không có kết quả nào'
                                : '${result.toString()} kết quả được tìm thấy',
                        style: AppTexts.heading4
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      if (isFocus)
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'Xem thêm >',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffCC5237)),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  result != 0
                      ? StaggeredGrid.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          children: listClan
                              .where((item) => item.userName
                                  .toLowerCase()
                                  .contains(valueSearch!.text.toLowerCase()))
                              .map(
                                (e) => StaggeredGridTile.count(
                                  crossAxisCellCount: 1,
                                  mainAxisCellCount: 1.35,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => ProfileClanPage(
                                            user: e,
                                          ),
                                        ),
                                      );
                                    },
                                    child: BlogWidget(
                                      img: e.image,
                                      name: e.userName,
                                      member: e.member,
                                      address: e.address,
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        )
                      : Center(
                          heightFactor: 2,
                          child: Image.asset(PathImage.bgSearch),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
