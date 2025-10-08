import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import '../widgets.dart';

class AppBarTitleWidget extends StatelessWidget {
  const AppBarTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 16),
      child: Row(
        children: [
          Image(image: AssetsLocations.iconLocation('logo'), width: 28),
          Gap(h: 8),
          Text('Rp', style: primaryTextTheme.bodySmall),
          Gap(h: 8),
          Text('0', style: primaryTextTheme.headlineSmall),
          Gap(),
          SizedBox(height: 30, child: AddCardWidgetAnimation()),
        ],
      ),
    );
  }
}