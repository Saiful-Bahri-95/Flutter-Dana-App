import 'package:flutter/material.dart';
import 'package:flutter_dana_app/pages/main_page.dart';
import 'package:flutter_dana_app/providers/bottom_navigation_provider.dart';
import 'package:flutter_dana_app/utils/dana_clone_theme.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = DanaCloneTheme.themeData();

    return ChangeNotifierProvider(
      create: (context) => BottomNavProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dana Clone',
        theme: theme,
        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: 1200, name: DESKTOP),
            const Breakpoint(start: 1201, end: double.infinity, name: '4K'),
          ],
        ),
        home: const MainPage(),
      ),
    );
  }
}
