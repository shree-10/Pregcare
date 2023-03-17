import 'package:flutter/material.dart';
import 'package:pregcare/mom/m_main.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:pregcare/tools/tools_main.dart';
import 'package:pregcare/profile/profile_main.dart';

import '../baby/baby_main.dart';
import '../bot/bot_main.dart';

class Pregcare extends StatefulWidget {
  const Pregcare({super.key});

  @override
  State<Pregcare> createState() => _PregcareState();
}

class _PregcareState extends State<Pregcare> {
  List pages = [
    MMain(),
    Baby(),
    BotPage(),
    MyTools(),
    MyProfile(),
  ];

  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: pages[_currentIndex],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          child: Card(
            child: SalomonBottomBar(
                onTap: ((index) {
                  setState(() {});
                  _currentIndex = index;
                }),
                currentIndex: _currentIndex,
                items: [
                  /// Home
                  SalomonBottomBarItem(
                    icon: Icon(Icons.face),
                    title: Text("Mom"),
                    selectedColor: Colors.purple,
                  ),

                  /// Likes
                  SalomonBottomBarItem(
                    icon: Icon(Icons.child_care_rounded, size: 30),
                    title: Text("Baby"),
                    selectedColor: Colors.red,
                  ),

                  /// Search
                  SalomonBottomBarItem(
                    icon: Icon(Icons.smart_toy_outlined),
                    title: Text("Bot"),
                    selectedColor: Colors.orange,
                  ),

                  /// Profile
                  SalomonBottomBarItem(
                    icon: Icon(Icons.business_center_outlined),
                    title: Text("Tools"),
                    selectedColor: Colors.teal,
                  ),
                  SalomonBottomBarItem(
                    icon: Icon(Icons.person_outline),
                    title: Text("Profile"),
                    selectedColor: Colors.teal,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

