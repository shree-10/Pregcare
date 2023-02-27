import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pregcare/utils/routes.dart';

import '../widgets/cards.dart';

class MMain extends StatelessWidget {
  MMain({super.key});

  List cards = [
    MomTileCrad(
        title_text: "Meal Plan",
        image_url: "assets/images/m_meal.png",
        openUrl: PregcareRoutes().momWeightRoute),
    MomTileCrad(
        title_text: "Exercise",
        image_url: "assets/images/m_exercise.png",
        openUrl: "hello"),
    MomTileCrad(
        title_text: "Weight",
        image_url: "assets/images/m_weight.png",
        openUrl: PregcareRoutes().momWeightRoute),
    MomTileCrad(
        title_text: "Calender",
        image_url: "assets/images/m_calender.png",
        openUrl: "hello"),
    MomTileCrad(
        title_text: "Store",
        image_url: "assets/images/m_store.png",
        openUrl: "hello"),
    MomTileCrad(
        title_text: "Articles",
        image_url: "assets/images/m_articles.png",
        openUrl: "hello"),
    MomTileCrad(
        title_text: "Contraction",
        image_url: "assets/images/m_contraction.png",
        openUrl: "hello"),
    MomTileCrad(
        title_text: "Experiances",
        image_url: "assets/images/m_experience.png",
        openUrl: "hello"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 238, 238, 238),
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            "Preg Care",
            style: GoogleFonts.dancingScript(
                fontWeight: FontWeight.w900, fontSize: 28, color: Colors.white),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: (() {
                    print("hello");
                  }),
                  icon: const Icon(Icons.sos_outlined),
                ),
              ],
            )
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.pink,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Weeks-80",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "01 : 08 : 2023",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
