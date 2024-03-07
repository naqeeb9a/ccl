import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int current = 0;
    final CarouselController controller = CarouselController();
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            color: const Color(0xff26487e),
            child: Column(
              children: [
                Image.asset(
                  "assets/wood.png",
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
                Image.asset("assets/ccl_logo.png"),
                const Gap(20),
                const Text(
                  "The Community Conservation Lab serves as a platform for collaborative and inclusive exploration, investigation, and experimentation in heritage conservation. Set up in the Hindu Kush Himalaya mountain region, it places emphasis on preserving community heritage, which includes buildings objects and practices.\n\nThe CCL aims to engage with local communities to learn from, and share knowledge about protecting and maintaining heritage landscapes. The lab is dedicated to identifying and documenting community heritage and produces guidelines, methods, and strategies for care, maintenance and long-term preservation in collaboration with local communities.",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          const Gap(20),
          StatefulBuilder(builder: (context, setState) {
            return Column(
              children: [
                const Gap(100),
                CarouselSlider(
                  carouselController: controller,
                  options: CarouselOptions(
                      height: 400.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          current = index;
                        });
                      }),
                  items: [1, 2, 3].map((i) {
                    return Image.asset("assets/image$i.png");
                  }).toList(),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [1, 2, 3].asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => controller.animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white
                                    : Colors.black)
                                .withOpacity(current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
                const Gap(100),
              ],
            );
          }),
          const Gap(20),
          Container(
            padding: const EdgeInsets.all(
              20,
            ),
            color: const Color(0xfff1ca00),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                {
                  "title": "What is an \nartefact?",
                  "text":
                      "The conservation lab handles a wide range of artifacts, encompassing both material and immaterial heritage. These include stories, techniques, buildings and objects. Our approach to artefact considers its affiliations with human, non-human and spiritual entities; whilst acknowledging its agency in the natural ecology and landscape."
                },
                {
                  "title": "What is \nKnowledge?",
                  "text":
                      "Modes of knowledge production refer to the various methods, approaches, and systems through which knowledge about the artefact or site is generated and validated within a particular field or community. Our approach recognizes tacit, observational, experimental, empirical, and the experiential as valuable modes of knowledge production in our conservation endeavors."
                },
                {
                  "title": "Our conservation Practice?",
                  "text":
                      "We work collaboratively with local communities in the entire process of thinking and practicing conservation. This includes choosing artifacts and determining conservation methods, encompassing documentation, condition assessment, preservation, and upkeep. Our approach involves finding synergies between scientific and local conservation techniques; we learn from each other in terms of how to read, understand and engage with the materials and assets and how to assess risks, decay and deterioration."
                },
              ]
                  .map(
                    (Map<String, String> e) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/ccl_logo.png",
                            color: e["title"] == "What is an \nartefact?"
                                ? Colors.white
                                : Colors.transparent,
                          ),
                          const Gap(20),
                          Text(
                            e["title"] ?? "",
                            style: const TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                          const Gap(20),
                          Text(
                            e["text"] ?? "",
                            style: const TextStyle(
                              color: Color(0xff4d5057),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          Image.asset(
            "assets/map.png",
            width: MediaQuery.of(context).size.width,
          ),
          footer(),
        ],
      ),
    );
  }

  Widget footer() {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      color: const Color(0xff4b6694),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "© Copyright 2007 - ${DateTime.now().year}",
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const Text(
            "Community Conservation Lab All Rights Reserved",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
