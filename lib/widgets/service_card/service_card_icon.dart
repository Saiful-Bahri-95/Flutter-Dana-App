import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets.dart';

class ServiceCardIcon extends StatelessWidget {
  const ServiceCardIcon({
    super.key,
    required this.iconName,
    required this.iconSubtitle,
    this.iconSize = 30,
  });

  final String iconName;
  final String iconSubtitle;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Expanded(
      child: Column(
        children: [
          Image(image: AssetsLocations.iconLocation(iconName), width: iconSize),
          Gap(v: 5),
          Text(
            iconSubtitle,
            style: textTheme.titleSmall?.copyWith(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
