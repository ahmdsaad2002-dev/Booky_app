
import 'package:flutter/cupertino.dart';

class AnimationText extends StatelessWidget {
  const AnimationText({
    super.key,
    required AnimationController animationController,
    required this.slidingAnimation,
    required this.opacityAnimation,
  }) : _animationController = animationController;

  final AnimationController _animationController;
  final Animation<Offset> slidingAnimation;
  final Animation<double> opacityAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return SlideTransition(
            position: slidingAnimation,
            child: FadeTransition(
              opacity: opacityAnimation,
              child: const Text(
                "Read Free Books",
                style: TextStyle(fontSize: 20),
              ),
            ),
          );}
    );
  }
}
