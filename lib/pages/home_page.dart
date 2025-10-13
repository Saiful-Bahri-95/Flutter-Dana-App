import 'package:flutter/material.dart';
import '../utils/utils.dart';
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: DanaCloneTheme.whiteBg,
          height: 360,
          child: Stack(
            children: [
              Container(
                height: 205,
                color: const Color.fromRGBO(17, 142, 234, 1),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [HeaderWidget(), ServiceCardWidget()],
              ),
            ],
          ),
        ),
        FeedCardWidget(),
        ImageLoopSliderWidget(),
        WhatsNewCardWidget(),
        NearbyCardWidget(),
        MoreForUCardWidget(),
        DanaProtectionCardWidget(),
      ],
    );
  }
}
