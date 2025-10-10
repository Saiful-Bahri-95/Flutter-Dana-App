import 'package:flutter/material.dart';
import 'package:flutter_dana_app/widgets/gap.dart';

import '../../utils/utils.dart';

class WhatsNewCardWidget extends StatelessWidget {
  const WhatsNewCardWidget({super.key});

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
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.fromLTRB(16, 10, 16, 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What\'s New',
                      style: primaryTextTheme.headlineMedium?.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'The best news of the day',
                      style: textTheme.bodyMedium?.copyWith(fontSize: 13),
                    ),
                  ],
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.only(left: 5, right: 5),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image(
                        image: AssetsLocations.iconLocation('promos'),
                        width: 16,
                      ),
                      Text('VIEW PROMO'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 20, bottom: 25),
            child: Row(
              children: [
                Image(
                  image: AssetsLocations.iconLocation('handphone'),
                  width: 32,
                ),
                Gap(h: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pakai DANA di Thailand',
                      style: textTheme.headlineSmall,
                    ),
                    Text(
                      'Belanja praktis tanpa kartu',
                      style: textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
