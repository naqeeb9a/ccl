import 'package:ccl/utils/data.dart';
import 'package:ccl/views/mobile/home_page.dart';
import 'package:ccl/views/web/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';

class WebGlossaryPage extends StatefulWidget {
  const WebGlossaryPage({super.key});

  @override
  State<WebGlossaryPage> createState() => _WebGlossaryPageState();
}

class _WebGlossaryPageState extends State<WebGlossaryPage> {
  String selectedFilter = "all";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Glossary",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const Gap(20),
              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: alphabets
                        .map((e) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedFilter = e;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.grey.shade400),
                                    borderRadius: BorderRadius.circular(5),
                                    color: e.toLowerCase() ==
                                            selectedFilter.toLowerCase()
                                        ? Colors.grey.shade300
                                        : null),
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                child: Text(e),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Builder(builder: (context) {
            List<Map> modifiedList = (selectedFilter.toLowerCase() == "all"
                ? glossaryList
                : glossaryList
                    .where((element) =>
                        element["text"][0].toString().toLowerCase() ==
                        selectedFilter.toLowerCase())
                    .toList());
            if (modifiedList.isEmpty) {
              return const Center(
                child: Text(
                  "No words found !!",
                  style: TextStyle(color: Colors.grey),
                ),
              ).animate().fade(
                    duration: 600.ms,
                  );
            }
            List<List<Map>> pairConvertedList = convertToPairs(modifiedList);
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: pairConvertedList
                      .map((e) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: e
                                  .map(
                                    (a) => Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            a["text"],
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            a["subText"],
                                            style: const TextStyle(
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ))
                      .toList()
                      .animate(interval: 100.ms)
                      .fade(duration: 600.ms),
                ),
              ),
            );
          }),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return const WebHomePage().footer();
            }
            return const MobileHomePage().footer();
          },
        )
      ],
    );
  }

  List<List<Map>> convertToPairs<T>(List<Map> list) {
    List<List<Map>> pairs = [];

    for (int i = 0; i < list.length; i += 2) {
      if (i + 1 < list.length) {
        pairs.add([list[i], list[i + 1]]);
      } else {
        pairs.add([list[i]]);
      }
    }

    return pairs;
  }
}
