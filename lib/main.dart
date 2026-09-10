import 'package:bookly_app/Core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'Features/Fsplash/Presentation/views/splash_view.dart';

void main() {
  runApp(BookyApp());
}

class BookyApp extends StatelessWidget {
  const BookyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.darkPurple,
      ),
      home: SplashView(),
    );
  }
}
