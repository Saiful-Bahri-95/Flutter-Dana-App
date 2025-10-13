import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets.dart';

class DanaProtectionCardWidget extends StatelessWidget {
  const DanaProtectionCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: DanaCloneTheme.grey.withOpacity(0.4),
          width: 0.3,
        ),
      ),
      margin: EdgeInsets.only(left: 16, right: 16, top: 8),
      child: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(16, 8, 16, 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image(
                      image: AssetsLocations.iconLocation('dana_protection'),
                      width: 40,
                    ),
                    Gap(h: 5),
                    Text('DANA\nPROTECTION', style: textTheme.displaySmall),
                  ],
                ),
                OutlinedButton(onPressed: () {}, child: Text('DISCOVER')),
              ],
            ),
            Gap(v: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HorizontalCaptionAndIcon(
                  iconName: 'money_back',
                  caption: 'Money-Back\nGuarantee',
                ),
                HorizontalCaptionAndIcon(
                  iconName: 'secure_data',
                  caption: 'Secure Data\nPrivacy',
                ),
                HorizontalCaptionAndIcon(
                  iconName: 'live_assistance',
                  caption: '24/7\nAssistance',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
