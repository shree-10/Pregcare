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
        title_text: "feeding",
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
        title_text: "#",
        image_url: "#",
        openUrl: "hello"),
    MomTileCrad(
        title_text: "#",
        image_url: "#",
        openUrl: "hello"),
    MomTileCrad(
        title_text: "#",
        image_url: "#",
        openUrl: "hello"),
  ];
   

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 238, 238, 238),
         body: SingleChildScrollView(
          child: Column(
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
        ),
      ),
      )
    );
    
  }
  
}