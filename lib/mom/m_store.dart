import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/store_link_card.dart';

class Mstore extends StatelessWidget {
  const Mstore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Store",
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Store(
              url: "https://www.amazon.in/s?k=baby+diapers&ref=nb_sb_noss",
              imageUrl: "assets/images/store/diaper_1.jpg",
              text: ""),
          Store(
              url: "https://www.flipkart.in",
              imageUrl: "assets/images/store/diaper_1.jpg",
              text: "Baby Diapers"),
        ],
      ),
    );
  }
}
