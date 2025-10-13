import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dana_app/providers/bottom_navigation_provider.dart';
import 'package:flutter_dana_app/utils/list_of_pages.dart';
import 'package:provider/provider.dart';

import '../utils/utils.dart';
import '../widgets/widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DanaCloneTheme.whiteBg,
      extendBody: true,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        toolbarHeight: kToolbarHeight + 1,
        elevation: 0,
        titleSpacing: 0,
        title: AppBarTitleWidget(),
        actions: [
          Image(image: AssetsLocations.iconLocation('message'), width: 27),
          Gap(h: 16),
        ],
      ),
      body: Consumer<BottomNavProvider>(
        builder: (context, provider, child) {
          return ListOfPages.pages[provider.selectedIndex];
        },
      ),
      bottomNavigationBar: SizedBox(height: 95, child: CustomBottomNavBar()),
    );
  }
}
