import 'package:family_tree/pages/event_page/index.dart';
import 'package:family_tree/pages/home_page/index.dart';
import 'package:family_tree/pages/profile_page/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../layouts/navigator_layout.dart';
import '../services/providers/focusSearch_provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  dynamic pages = [
    HomePage(),
    const EventPage(),
    const ProfilePage(),
  ];

  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void onTapNavigatorBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isFocus = Provider.of<FocusSearchProvider>(context).isFocus;

    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: isFocus
          ? NavigatorLayout(
              currentIndex: currentIndex,
              onTapNavigatorBar: onTapNavigatorBar,
            )
          : const SizedBox(),
    );
  }
}
