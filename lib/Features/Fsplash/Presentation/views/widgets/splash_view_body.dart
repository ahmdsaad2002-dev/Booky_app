import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../Core/app_images.dart';
import '../../../../Fhome/presntation/views/home_view.dart';
import 'animation_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<double> opacityAnimation;

  @override
  void initState() {
    super.initState();
    initTextAnimation();
    navigateToHomeView();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
          AnimationText(
            animationController: _animationController,
            slidingAnimation: slidingAnimation,
            opacityAnimation: opacityAnimation,
          ),
        ],
      ),
    );
  }

  void initTextAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 10),
      end: Offset.zero,
    ).animate(_animationController);

    opacityAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_animationController);
    _animationController.forward();
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(milliseconds: 1800), () {
      Get.off(
        HomeView(),
        transition: Transition.zoom,
        duration: const Duration(milliseconds: 1000),
      );
    });
  }
}
