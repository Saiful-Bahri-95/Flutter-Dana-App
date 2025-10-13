import 'package:flutter/material.dart';
import 'package:flutter_dana_app/widgets/gap.dart';

import '../../utils/utils.dart';

class MoreForUCardWidget extends StatelessWidget {
  const MoreForUCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
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
        padding: EdgeInsetsGeometry.fromLTRB(16, 20, 16, 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'More for you',
                      style: primaryTextTheme.headlineMedium,
                    ),
                    Text('Want more good stuff?', style: textTheme.bodyMedium),
                  ],
                ),
                OutlinedButton(onPressed: () {}, child: Text('VIEW ALL')),
              ],
            ),
            Gap(v: 16),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetsLocations.imageLocation('promo_voucher'),
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Promo Voucher', style: textTheme.displayMedium),
                      Gap(v: 3),
                      Text(
                        'Choose and claim your\npromo voucher',
                        style: textTheme.titleSmall!.copyWith(
                          color: DanaCloneTheme.white,
                          fontWeight: FontWeight.w300,
                          letterSpacing: -0.2,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: 10,
                  child: CircleAvatar(
                    backgroundColor: DanaCloneTheme.thirdBlue,
                    radius: 15,
                    child: Icon(Icons.chevron_right_rounded, size: 30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
