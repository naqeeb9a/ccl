import 'package:ccl/utils/data.dart';
import 'package:ccl/views/mobile/home_page.dart';
import 'package:ccl/views/web/home_page.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';

class MobileArchivePage extends StatefulWidget {
  const MobileArchivePage({super.key});

  @override
  State<MobileArchivePage> createState() => _MobileArchivePageState();
}

class _MobileArchivePageState extends State<MobileArchivePage> {
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
                "Archive",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const Gap(20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: archiveFilters
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
                              width: 100,
                              alignment: Alignment.center,
                              child: Text(e),
                            ),
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Builder(builder: (context) {
            List<Map<String, dynamic>> modifiedList =
                (selectedFilter.toLowerCase() == "all"
                    ? archives
                    : archives
                        .where((element) => element["tags"]
                            .toString()
                            .toLowerCase()
                            .split(",")
                            .toList()
                            .contains(selectedFilter.toLowerCase()))
                        .toList());
            if (modifiedList.isEmpty) {
              return const Center(
                child: Text(
                  "No archives found !!",
                  style: TextStyle(color: Colors.grey),
                ),
              ).animate().fade(
                    duration: 600.ms,
                  );
            }
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: modifiedList
                    .map(
                      (Map<String, dynamic> e) => Padding(
                        padding: const EdgeInsets.all(20),
                        child: expandedText(
                          e["title"],
                          e["collapsed"],
                          e["expanded"],
                        ),
                      ),
                    )
                    .toList()
                    .animate(interval: 100.ms)
                    .fade(duration: 600.ms),
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

  Widget expandedText(
    String text,
    List<Map<String, String>> collapsed,
    List<Map<String, String>> expanded,
  ) {
    return ExpandablePanel(
        header: Text(
          text,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        collapsed: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: collapsed
              .map(
                (e) => infoRow(e["title"] ?? "", e["teamName"] ?? ""),
              )
              .toList(),
        ),
        expanded: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: expanded
              .map(
                (e) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(10),
                    Text(
                      e["title"] ?? "",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const Gap(20),
                    Text(e["text"] ?? ""),
                    const Gap(10),
                  ],
                ),
              )
              .toList(),
        ));
  }

  Widget infoRow(String text1, String text2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
          text2,
          softWrap: true,
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
