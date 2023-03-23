import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pregcare/baby/bbirth.dart';
import 'package:pregcare/baby/abirth.dart';

class Baby extends StatelessWidget {
  const Baby({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Center(
            child: Text(
              "Preg Care",
              style: GoogleFonts.dancingScript(
                  fontWeight: FontWeight.w900,
                  fontSize: 28,
                  color: Colors.white),
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(8.0),
          color: const Color.fromARGB(255, 238, 238, 238),
          child: ContainedTabBarView(
            tabs: [
              Container(
                child: const Text(
                  'Before Birth',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              Container(
                child: const Text(
                  'After Birth',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ],
            views: const [
              bbirth(),
              abirth(),
            ],
            onChange: (index) => print(index),
          ),
        ),
      ),
    );
  }
}
