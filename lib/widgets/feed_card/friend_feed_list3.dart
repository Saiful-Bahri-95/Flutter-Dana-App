import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets.dart';

class FriendFeedList3 extends StatelessWidget {
  const FriendFeedList3({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        TileWithAnimation(iconName: 'friend_3'),
        Gap(),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: 'Your Friend',
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
              children: [
                TextSpan(
                  text: ' Just received',
                  style: textTheme.titleLarge,
                ),
                TextSpan(
                  text: ' DANA Kaget',
                  style: textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: DanaCloneTheme.orange,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
