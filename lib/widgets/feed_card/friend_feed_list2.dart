import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets.dart';

class FriendFeedList2 extends StatelessWidget {
  const FriendFeedList2({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        TileWithAnimation(iconName: 'friend_2'),
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
                  text: ' Just received Pulsa Voucer',
                  style: textTheme.titleLarge,
                ),
                TextSpan(
                  text: ' Cashback',
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
