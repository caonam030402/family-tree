import 'package:family_tree/constants/path_images.dart';
import 'package:family_tree/pages/onboarding_page/widgets/intro_page.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          controller: controller,
          itemCount: introPageItem.length,
          itemBuilder: (context, index) {
            final item = introPageItem[index];
            return IntroPage(
              indexPage: index + 1,
              content: item.content,
              title: item.title,
              image: item.image,
              icon: item.icon,
              controller: controller,
            );
          },
        ),
      ),
    );
  }
}

class IntroPageItem {
  String icon;
  String image;
  String content;
  String title;
  IntroPageItem(
      {required this.icon,
      required this.content,
      required this.title,
      required this.image});
}

List<IntroPageItem> introPageItem = [
  IntroPageItem(
      image: PathImage.im_people1,
      icon: PathImage.im_genealogy,
      title: 'Tạo và quản lý cây phả hệ',
      content:
          'Lập sơ đồ gia phả của dòng họ, bao gồm các thông tin về các thành viên trong gia đình và mối quan hệ trong dòng họ. '),
  IntroPageItem(
      image: PathImage.im_people2,
      icon: PathImage.im_home,
      title: 'Tìm kiếm gia đình',
      content:
          'Có thể tìm kiếm các thành viên trong gia đình của họ hoặc gia đình khác. Kết bạn với nhau để có thể gắn kết yêu thương, chia sẻ thông tin, tâm tư trong gia đình, dòng họ.'),
  IntroPageItem(
      image: PathImage.im_people3,
      icon: PathImage.im_tree,
      title: 'Phân tích dữ liệu phả hệ',
      content:
          'Phần mềm có thể phân tích dữ liệu gia phả để đưa ra các thống kê và trực quan hóa dữ liệu. Hiểu rõ hơn về mối quan hệ trong gia đình của họ và có cái nhìn tổng quan về lịch sử gia đình.'),
];
