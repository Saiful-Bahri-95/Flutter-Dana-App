import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/utils.dart';
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DanaCloneTheme.whiteBg,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        elevation: 0,
        titleSpacing: 0,
        title: AppBarTitleWidget(),
        actions: [
          Image(image: AssetsLocations.iconLocation('message'), width: 27),
          Gap(h: 16),
        ],
      ),
      body: ListView(
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
        ],
      ),
    );
  }
}
