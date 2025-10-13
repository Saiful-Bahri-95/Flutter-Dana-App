import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets.dart';

class HorizontalCaptionAndIcon extends StatelessWidget {
  const HorizontalCaptionAndIcon({
    super.key,
    required this.iconName,
    required this.caption,
  });

  final String iconName;
  final String caption;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Image(image: AssetsLocations.iconLocation(iconName), width: 25),
        Gap(h: 7),
        Text(caption, style: textTheme.bodySmall?.copyWith(fontSize: 10)),
      ],
    );
  }
}
