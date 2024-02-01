import 'package:family_tree/configs/app_routes.dart';
import 'package:family_tree/services/providers/focusSearch_provider.dart';
import 'package:family_tree/services/providers/search_provider.dart';
import 'package:family_tree/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SearchProvider()),
        ChangeNotifierProvider(create: (_) => FocusSearchProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Family Tree',
        theme: ThemeData(
            fontFamily: 'Roboto',
            scaffoldBackgroundColor: AppColors.whiteColor,
            brightness: Brightness.light),
        routes: AppRoutes.pages,
        initialRoute: AppRoutes.splash,
      ),
    );
  }
}
