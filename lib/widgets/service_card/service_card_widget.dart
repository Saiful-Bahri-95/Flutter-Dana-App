import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets.dart';

class ServiceCardWidget extends StatelessWidget {
  const ServiceCardWidget({super.key});

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
      margin: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(35, 25, 10, 20),
            child: Row(
              children: [
                Image(image: AssetsLocations.iconLocation('coupon'), width: 30),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DANA Deals',
                      style: primaryTextTheme.headlineMedium?.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Jajan Hemat s/d 43%',
                      style: textTheme.titleMedium?.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('SERBU', style: primaryTextTheme.labelLarge),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(left: 22, bottom: 12, right: 22),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    ServiceCardIcon(
                      iconName: 'electricity',
                      iconSubtitle: 'Electricity',
                    ),
                    ServiceCardIcon(
                      iconName: 'rewards',
                      iconSubtitle: 'Voucer A+ Rewards',
                    ),
                    ServiceCardIcon(iconName: 'emas', iconSubtitle: 'eMAS'),
                    ServiceCardIcon(
                      iconName: 'goals',
                      iconSubtitle: 'DANA Goals',
                    ),
                  ],
                ),
                Gap(v: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    ServiceCardIcon(
                      iconName: 'item_digital',
                      iconSubtitle: 'Item Digital',
                      iconSize: 25,
                    ),
                    ServiceCardIcon(
                      iconName: 'pulsa',
                      iconSubtitle: 'Pulsa &\n Data',
                      iconSize: 25,
                    ),
                    ServiceCardIcon(
                      iconName: 'dana_kaget',
                      iconSubtitle: 'DANA Kaget',
                      iconSize: 25,
                    ),
                    ServiceCardIcon(
                      iconName: 'view_all',
                      iconSubtitle: 'View All',
                      iconSize: 25,
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
