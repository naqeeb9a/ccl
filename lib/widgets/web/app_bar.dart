import 'package:flutter/material.dart';

class CustomWebAppBar extends StatelessWidget {
  const CustomWebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color(0xff4b6694),
      child: Row(
        children: [
          Image.asset(
            "assets/ccl_logo.png",
            height: 50,
          ),
          const Text(
            "COMMUNITY \nCONSERVATION LAB",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          TabBar(
              isScrollable: true,
              dividerColor: Colors.transparent,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              labelStyle: const TextStyle(fontSize: 16),
              tabs: [
                "Home",
                "Location",
                "Archive",
                "Glossary",
              ]
                  .map((e) => Tab(
                    text: e,
                  ))
                  .toList())
        ],
      ),
    );
  }
}
