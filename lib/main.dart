import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main(){
  runApp(BookyApp());
}

class BookyApp extends StatelessWidget {
  const BookyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
home:  SplashView(),
    );
  }
}