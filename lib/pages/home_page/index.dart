import 'package:carousel_slider/carousel_slider.dart';
import 'package:family_tree/components/card_family.dart';
import 'package:family_tree/components/search.dart';
import 'package:family_tree/configs/app_routes.dart';
import 'package:family_tree/constants/path_images.dart';
import 'package:family_tree/pages/home_page/widgets/account.dart';
import 'package:family_tree/pages/home_page/widgets/category.dart';
import 'package:family_tree/styles/app_colors.dart';
import 'package:family_tree/styles/app_styles.dart';
import 'package:family_tree/styles/app_texts.dart';
import 'package:flutter/material.dart';

List listImage = [
  "https://cdn.pixabay.com/photo/2016/11/29/04/16/beach-1867271_640.jpg",
  "https://cdn.pixabay.com/photo/2016/11/08/05/08/adult-1807500_640.jpg",
  "https://cdn.pixabay.com/photo/2019/11/08/09/27/family-4610864_640.jpg"
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: -250,
              left: -100,
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    color: AppColors.brownColor.withOpacity(1),
                    borderRadius: BorderRadius.all(Radius.circular(1000))),
              ),
            ),
            Container(
              height: 338,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    AppColors.primaryColor,
                    AppColors.primaryColor.withOpacity(0.2)
                  ])),
            ),
            CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(AppStyles.paddingBothSidesPage),
                    child: Column(
                      children: [
                        Account(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.signIn);
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Search(),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.2,
                      height: 150.0,
                      autoPlay: true,
                    ),
                    items: listImage.map((item) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              height: 200,
                              width: 800,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(item, fit: BoxFit.cover),
                              ));
                        },
                      );
                    }).toList(),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    color: AppColors.whiteColor,
                    padding:
                        const EdgeInsets.all(AppStyles.paddingBothSidesPage),
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(PathImage.im_category),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Danh mục',
                                    style: AppTexts.heading4
                                        .copyWith(color: AppColors.blackColor),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Category(
                                      image: PathImage.im_1,
                                      label: 'Tạo cây phả hệ',
                                    ),
                                    Category(
                                      image: PathImage.im_2,
                                      label: 'Cây phả hệ của tôi',
                                    ),
                                  ]),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Khám phá Gia tộc',
                              style: AppTexts.heading4.copyWith(
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            GestureDetector(
                              child: Text(
                                'Xem thêm >',
                                style: AppTexts.heading6
                                    .copyWith(color: AppColors.brownColor),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: (200 + 10) *
                              (listFamily.length.toDouble() / 2).ceilToDouble(),
                          child: GridView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: 210,
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10),
                              itemBuilder: (context, index) {
                                final item = listFamily[index];
                                return CardFamily(
                                    quantity: item.countFamily,
                                    title: item.title,
                                    location: item.location,
                                    image: item.image);
                              },
                              itemCount: listFamily.length),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Family {
  String image;
  String title;
  double countFamily;
  String location;
  Family({
    required this.title,
    required this.countFamily,
    required this.location,
    required this.image,
  });
}

List<Family> listFamily = [
  Family(
    title: 'Dòng họ Nguyễn Đông Tác',
    countFamily: 120,
    location: 'Bình Sơn, Quảng Ngãi, Việt Nam',
    image: PathImage.im_people2,
  ),
  Family(
    title: 'Dòng họ Nguyễn Đông Tác',
    countFamily: 120,
    location: 'Bình Sơn, Quảng Ngãi, Việt Nam',
    image: PathImage.im_people2,
  ),
  Family(
    title: 'Dòng họ Nguyễn Đông Tác',
    countFamily: 120,
    location: 'Bình Sơn, Quảng Ngãi, Việt Nam',
    image: PathImage.im_people2,
  ),
  Family(
    title: 'Dòng họ Nguyễn Đông Tác',
    countFamily: 120,
    location: 'Bình Sơn, Quảng Ngãi, Việt Nam',
    image: PathImage.im_people2,
  ),
  Family(
    title: 'Dòng họ Nguyễn Đông Tác',
    countFamily: 120,
    location: 'Bình Sơn, Quảng Ngãi, Việt Nam',
    image: PathImage.im_people2,
  ),
  Family(
    title: 'Dòng họ Nguyễn Đông Tác',
    countFamily: 120,
    location: 'Bình Sơn, Quảng Ngãi, Việt Nam',
    image: PathImage.im_people2,
  ),
  Family(
    title: 'Dòng họ Nguyễn Đông Tác',
    countFamily: 120,
    location: 'Bình Sơn, Quảng Ngãi, Việt Nam',
    image: PathImage.im_people2,
  ),
  Family(
    title: 'Dòng họ Nguyễn Đông Tác',
    countFamily: 120,
    location: 'Bình Sơn, Quảng Ngãi, Việt Nam',
    image: PathImage.im_people2,
  ),
  Family(
    title: 'Dòng họ Nguyễn Đông Tác',
    countFamily: 120,
    location: 'Bình Sơn, Quảng Ngãi, Việt Nam',
    image: PathImage.im_people2,
  ),
];
