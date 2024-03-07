import 'package:flutter/material.dart';

import '../views/mobile/home_page.dart';
import '../views/mobile/location_page.dart';
import '../views/web/home_page.dart';
import '../views/web/location_page.dart';
import '../widgets/mobile/app_bar.dart';
import '../widgets/web/app_bar.dart';
import 'mobile/archive_page.dart';
import 'mobile/glossary_page.dart';
import 'web/archive_page.dart';
import 'web/glossary_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: LayoutBuilder(builder: (context, boxConstraints) {
          if (boxConstraints.maxWidth > 800) {
            return const Column(
              children: [
                CustomWebAppBar(),
                Expanded(
                  child: TabBarView(
                    children: [
                      WebHomePage(),
                      WebLocationPage(),
                      WebArchivePage(),
                      WebGlossaryPage(),
                    ],
                  ),
                ),
              ],
            );
          }
          return const Column(
            children: [
              CustomMobileAppBar(),
              Expanded(
                child: TabBarView(
                  children: [
                    MobileHomePage(),
                    MobileLocationPage(),
                    MobileArchivePage(),
                    MobileGlossaryPage(),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
