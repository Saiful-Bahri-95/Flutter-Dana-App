import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/loop_animation_builder.dart';

import '../../utils/utils.dart';

class TileWithAnimation extends StatelessWidget {
  const TileWithAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return LoopAnimationBuilder(
      builder: (context, value, child) => Container(
        height: 38,
        width: 38,
        decoration: BoxDecoration(shape: BoxShape.circle, color: value),
        child: child,
      ),
      tween: ColorTween(begin: Colors.transparent, end: Colors.redAccent),
      duration: Duration(seconds: 3),
      curve: Curves.easeOutQuint,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Image(image: AssetsLocations.iconLocation('friend_1')),
      ),
    );
  }
}
