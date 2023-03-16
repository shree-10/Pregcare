import 'package:flutter/material.dart';

import '../utils/routes.dart';
import '../widgets/cards.dart';

class abirth extends StatefulWidget {
  const abirth({super.key});

  @override
  _abirth createState() => _abirth();
}

class _abirth extends State<abirth> {
  List cards = [
    MomTileCrad(
        title_text: "Feeding",
        image_url: "assets/images/Breastfeeding.png",
        openUrl: PregcareRoutes().momWeightRoute),
    MomTileCrad(
        title_text: "Sleep",
        image_url: "assets/images/sleep.png",
        openUrl: "hello"),
    MomTileCrad(
        title_text: "Weight",
        image_url: "assets/images/m_weight.png",
        openUrl: PregcareRoutes().momWeightRoute),
    MomTileCrad(
        title_text: "Vaccine",
        image_url: "assets/images/vaccine.png",
        openUrl: "hello"),
    MomTileCrad(
        title_text: "Store",
        image_url: "assets/images/m_store.png",
        openUrl: PregcareRoutes().babyStoreRoute),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 238, 238),
        body: SingleChildScrollView(
          child: Column(
            children: [
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  cards.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: cards[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
