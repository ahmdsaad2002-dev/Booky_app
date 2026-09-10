import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../Core/app_images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(AppImages.logo, width: 75, height: 75),
          ),
          SizedBox(height: 35),
          const Text(
            "Read Free Books",
          ),
        ],
      ),
    );
  }
}
