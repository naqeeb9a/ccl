import 'package:carousel_slider/carousel_slider.dart';
import 'package:ccl/views/mobile/home_page.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MobileLocationPage extends StatelessWidget {
  const MobileLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Stack(
          children: [
            Image.asset("assets/map.png"),
            Positioned(
              bottom: 0,
              right: 50,
              child: Container(
                color: const Color(0xfff1ca00),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Location",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              {
                "imageName": "himalayan",
                "title":
                    "Exploring Islamic art and architecture in the Himalayan region",
                "location": "Sermik, Kharmang, Baltistan",
                "year": "2023",
                "supportedBy": "Major Award, Barakat Trust, UK.",
                "projectLead": "Dr. Zahra Hussain",
                "team":
                    "Ifrah Asif, Syed Kamran Ali Rizvi, Muhammad Abdullah, Mohammad Omar, Rija Zaki",
                "expandable": [
                  {
                    "title": "Site :",
                    "text":
                        "Thami Mosque, a 400-year-old wooden structure having religious significance for the local community and is considered sacred for the Noor Bakhsh Sofia group, followers of Syed M. Noor bakhsh and Mir Syed Ali Hamdani. The mosque is constructed in ‘Thathar’ (wooden framework with mud cladding) is indigenous to the context and is resistant to earthquakes. The interior of the building has exceptionally intricate hand carved woodwork from Kashmir, an exhibit of master craftsmanship (khatamband and pinjrakari) introduced by Mir Sayyid Ali Hamadani, who arrived from Persia with skilled craftsmen in the 14th century. This craft is no longer practiced in the region making the preservation of this structure even more significant. The hand carved woodwork has exquisite details inspired by Islamic geometric patterns and motifs. In addition to offering prayers, the prayer hall is also used by the local community as a gathering space whilst also used as a Sarayae for travelers."
                  },
                  {
                    "title": "Description :",
                    "text":
                        "The project aimed to highlight the significance of Islamic art and architecture by documenting the architectural form and decorative patterns used in Thami Mosque in Sermik village of Kharmang district. It provided recommendations for prioritized actions necessary to preserve the mosque. The project further aimed to document the existing structure and woodwork details in the mosque, conducted a detailed condition assessment, and analyzed the damage that had occurred. Recommendations for preservation were provided based on the findings. Involving the community throughout the documentation and analysis process was a key element in the project, as their knowledge about the history of the site and vernacular construction techniques proved invaluable."
                  },
                  {
                    "title": "Methodology :",
                    "text":
                        "The workshop commenced with an engaging exploration of the local community’s knowledge of Thami Mosque and vernacular architecture through focused group discussions. As an integral part of the workshop, various modules were introduced to enhance the participants’ understanding of architectural principles and documentation techniques. The workshop encompassed topics such as architectural photography, basics of condition survey, assessment, and mapping, as well as an introduction to wood inspection and condition assessment. Additionally, the participants delved into the intricacies of Adobe construction, mud brick, and mud plaster analysis, followed by an introduction to masonry inspection and condition assessment. The workshop further covered the basics of material sampling and investigation. Notably, community members actively and diligently participated in these components, resulting in a significant enhancement of their knowledge about traditional architecture. Through this collaborative learning experience, the workshop successfully bridged the gap between theoretical concepts and practical application, fostering a deeper understanding of Thami Mosque and vernacular architectural practices within the local community. The project’s outreach extended beyond Sermik, reaching a broader audience in Islamabad through its inclusion in the “Crafting Methods Exhibition.” This exhibition served as a celebration of mountain crafting methods, attracting numerous like-minded individuals, groups, and communities from mountainous regions. The launch of the Community-Conservation Lab (CCL) website was strategically shared with a larger audience during this event, adding significance to the occasion"
                  },
                ],
              },
              {
                "imageName": "vernacular",
                "title": "Vernacular Architecture Prototype",
                "location": "Brep, Yarkhun, Upper Chitral",
                "year": "2022",
                "supportedBy": "Local elders who guided us in the process",
                "projectLead": "Dr. Zahra Hussain",
                "team": "Syed Kamran Ali Rizvi, Mason Maqsood ",
                "expandable": [
                  {
                    "title": "Site :",
                    "text": "Flood Rehabilitation House (self/private)"
                  },
                  {
                    "title": "Description :",
                    "text":
                        "Due to mudslides triggered by prolonged monsoons in 2022, the typically arid Brep village faced significant adversity, resulting in the destruction of numerous houses and displacement of families. In response to this crisis, our team visited the affected area to assess the damage and develop environmentally sustainable rehabilitation strategies.\nPast experiences with CGI sheet shelters proved inadequate, as they were temporary, lacked insulation, and exhibited extreme temperatures – hot in summer and cold in winter. Our objective was to avoid introducing cement blocks, considering the associated costs and environmental impact. Instead, we aimed to create a prototype using locally available materials.\nInitially, local families were hesitant about this approach, expressing a belief that the government should be responsible for building houses for them. However, recognizing the urgency of the situation, a mason in dire conditions, with elderly dependents and young children, agreed to collaborate. During the site visit, we finalized a design using local materials, prepared a Bill of Quantities (BOQ), and signed a construction contract to expedite the building process before the Initially, the mason, along with two assistants, took on the task of preparing mud blocks. Given that it was already October, sufficient time was allocated for the blocks to dry. Concurrently, the mason undertook the preparation of wood for the structural components. The next phase involved the excavation of the foundation, followed by the meticulous laying out of the foundation. Working in collaboration with his brother-in-law, a carpenter, the mason erected the wooden framework.\nWith the foundation and structural elements in place, the mason commenced the infill process using the prepared mud blocks. Subsequently, the roof structure was carefully laid out, culminating in the completion of a flat mud roof. This methodical progression ensured a comprehensive and well-executed construction process onset of winter.\nThe aforementioned project demonstrated cost-efficiency by utilizing locally sourced materials, particularly mud blocks prepared on-site. The strategic planning and efficient execution ensured that the owner, Mason Maqsood, could move into the newly constructed house before the onset of the harsh December winters. This approach not only minimized expenses but also underscored the viability of utilizing readily available resources for timely and effective construction."
                  },
                ],
              },
              {
                "imageName": "earthing",
                "title":
                    "Project: Earthing Narratives; mud building and plasters",
                "location": "Various, Baltistan",
                "year": "2022 – 2023",
                "supportedBy": "Laajverd; LVS",
                "projectLead": "Dr. Zahra Hussain",
                "team": "Various; Laajverd, LVS, FHE, CCL",
                "expandable": [
                  {"title": "Site :", "text": "material and techniques"},
                  {
                    "title": "Description :",
                    "text":
                        "This project is an ongoing longitudinal research in the study of soil and its value for mountain communities in the HKH region. The mountain communities offer a unique earthen heritage that developed in correspondence with the climate, geology and landscape entwined in spiritual inclinations and religious beliefs. This can be identified in the cator and cribbage earthen constructions and its contemporary variations crafted by local masons and carpenters. These vast landscapes and unstable landforms compounded by effects of climate change offer the case of loss as well as anticipated loss to this earthen heritage of local mountain communities (DeSilvey et al, 2022; Venture et al 2021).\nThis project approaches soil as lively matter (Puig de la Bellacasa, 2015); both as a vibrant material as well as practice of making (Ingold, 2010).  In vernacular construction, soil is the primary material used for wall infills, mortars, layering wooden roofs, preparing floors and plastering walls. The house becomes a canvas where varieties of soil found in a valley constitute the palette for local people. Masons have crafted several techniques over the last many decades to attune soil for plastering different kinds of surfaces.  Local ways of ‘knowing’ the soil combine feeling its textures, anticipating the compositions, surface preparation, trying out application techniques, and identifying different kinds of soil found in the local landscape. Apart from scientific analysis for future conservation, local knowledge of material and forms of expression are intrinsic to heritage and identity in the mountain valleys which are increasingly threatened due to the climate crisis. For example, adapting plasters for a changing climate requires knowledge of the various soils, binding capacities and compositions as well as repeated attempts to check plaster integrity."
                  },
                  {
                    "title": "Methodology :",
                    "text":
                        "Through focused group discussions, the production of drawings, and on-site experimentation, our exploration delved into how mud blocks and plasters respond to the climate crisis. We scrutinized their overall strength and integrity, considering the impact of weather changes and general deterioration. The investigation extended to understanding the challenges and potentials of reinforcing ratios and mixes, drawing insights from successful strategies in neighboring valleys.\nOur examination also encompasses the material landscape of soil, analyzing its availability in different areas, assessing the strength and qualities of various soils, and determining their suitability for different construction components. The overarching goal of this comprehensive study was to discern how we could harmonize adobe/mud constructions to create low-cost, climate-friendly houses, promoting a sustainable alternative to complete reliance on concrete blocks.\nThe study reached its culmination with the development of a comprehensive process map detailing mud construction, accompanied by a table outlining soil types and corresponding ratios. This consolidated visual representation encapsulates the insights gathered from focus group discussions, drawing production, on-site experimentation, and the exploration of climate-responsive strategies. The resulting process map and ratio table serve as valuable tools for understanding and implementing effective, low-cost, and environmentally friendly mud construction techniques."
                  },
                ],
              },
              {
                "imageName": "timber",
                "title":
                    "Project: Timber tales; artefacts, methods and products",
                "location": "Various, Baltistan",
                "year": "2022 – 2023",
                "supportedBy": "Laajverd; LVS",
                "projectLead": "Dr. Zahra Hussain",
                "team": "Various; Laajverd, LVS, FHE, CCL",
                "expandable": [
                  {"title": "Site :", "text": "Material and techniques"},
                  {
                    "title": "Description :",
                    "text":
                        "Timber Tales is an in-depth exploration into the rich world of wood in the HKH (Hindu Kush Himalaya) region, its varied uses and types within the daily practices of local communities. In Northern Pakistan, timber and forests face a myriad of threats, placing vulnerable communities and their dwellings at significant risk. Rapid climate change has elevated the frequency and intensity of extreme weather events, exacerbating forest degradation and making these regions more susceptible to wildfires. In addition to this unregulated logging and illegal timber extraction contribute to deforestation, posing a direct threat to the delicate ecosystems and biodiversity of the area. This not only compromises the environmental balance but also undermines the primary livelihoods of local communities dependent on forests for sustenance and income and well as survival.\nMountain communities are dependent on wood as fuel for cooking and heating due to non-availability of gas or electricity. Wood is also a traditional and readily available construction material in mountainous areas and can be seen widely in the HKH region with some variations in construction techniques. It is used in the making house hold items such spoons or looms. Wood plays a significant role and therefore requires attention with respect to its protection, sustainable use and regeneration. Conserving wood structures and monuments typically involves preserving them in their original form or replicating them in new designs. However, our approach to conservation prioritizes the sustainable use of wood in buildings while maintaining the authenticity of the form, techniques, and the material itself. Unlike past practices that often consumed large quantities of wood, replicating such designs in new structures could pose a threat to forests. Therefore, it’s crucial to use wood wisely in construction."
                  },
                  {
                    "title": "Methodology :",
                    "text":
                        "Through focused group discussions, the production of drawings, and on-site experimentation, our exploration delved into how mud blocks and plasters respond to the climate crisis. We scrutinized their overall strength and integrity, considering the impact of weather changes and general deterioration. The investigation extended to understanding the challenges and potentials of reinforcing ratios and mixes, drawing insights from successful strategies in neighboring valleys.\nOur research methodology involved immersive sessions, including focused group discussions and laid-back tea-time conversations, which allowed us to glean insights into the intricate processes surrounding wood usage. This encompassed understanding the nuances of cutting and seasoning wood, the application of diverse joinery techniques, considerations of structural stability, and the specific types of wood utilized in different facets of construction and artifact creation. We collaborated with local masons and carpenters to develop design and structural interventions. The goal was to explore ways of reducing the amount of wood used in construction while simultaneously enhancing structural stability. This approach ensures that our conservation efforts not only honor the historical and cultural aspects of wood structures but also contribute to the responsible and sustainable use of this valuable resource.\nField visits across diverse regions, including Kalash, Yarkhun, Yasin, Shigar, Kharmang, and Khaplu, provided on-site experiences. Additionally, hands-on experiments within carpenters’ workshops allowed us to grasp the intricate construction techniques unique to each locality.\nNotably, we delved into the significance of wooden products such as looms in the cultural fabric of mountain communities, particularly in the context of weaving practices. A critical aspect of our investigation was the examination of the challenges faced by these wooden artifacts, particularly looms, in the face of changing weather conditions. Our objective was to identify measures that could stabilize them, ensuring their continued functionality.\nCentral to our exploration was a thorough understanding of the challenges locals confront concerning wood availability. Moreover, we delved into their reservations about choosing wood over RCC (Reinforced Concrete), taking into account various viewpoints. The overarching goal was to formulate nuanced strategies that resonate with the community, ensuring a sustainable and culturally sensitive approach to wood utilization in the region."
                  },
                ],
              },
            ]
                .map(
                  (Map<String, dynamic> e) => Padding(
                    padding: const EdgeInsets.all(20),
                    child: articleCard(
                        e["imageName"] ?? "",
                        e["title"] ?? "",
                        e["location"] ?? "",
                        e["year"] ?? "",
                        e["supportedBy"] ?? "",
                        e["projectLead"] ?? "",
                        e["team"] ?? "",
                        e["expandable"]),
                  ),
                )
                .toList(),
          ),
        ),
        const MobileHomePage().footer(),
      ],
    ));
  }

  Widget articleCard(
    String imageName,
    String title,
    String location,
    String year,
    String supportedBy,
    String projectLead,
    String teamName,
    List<Map<String, String>> expandable,
  ) {
    return ExpandablePanel(
        header: Text(
          title,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        collapsed: Column(
          children: [
            {
              "title": "Location : ",
              "teamName": location,
            },
            {
              "title": "Year : ",
              "teamName": year,
            },
            {
              "title": "Supported by : ",
              "teamName": supportedBy,
            },
            {
              "title": "Project Lead : ",
              "teamName": projectLead,
            },
            {
              "title": "Team : ",
              "teamName": teamName,
            },
          ]
              .map(
                (e) => infoRow(e["title"] ?? "", e["teamName"] ?? ""),
              )
              .toList(),
        ),
        expanded: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: expandable
                  .map((e) => Column(
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
                      ))
                  .toList(),
            ),
            const Gap(10),
            CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                height: 600.0,
              ),
              items: [1, 2, 3, 4, 5, 6].map((i) {
                return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/$imageName$i.png",
                      width: 600,
                      height: 600,
                    ));
              }).toList(),
            ),
            const Gap(20),
          ],
        ));
  }

  Widget infoRow(String text1, String text2) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Flexible(
          child: Text(
            text2,
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
