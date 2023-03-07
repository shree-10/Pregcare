import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pregcare/mom/m_weight.dart';
import 'package:pregcare/pages/pregcare.dart';
import 'package:pregcare/utils/routes.dart';
import 'mom/m_articles.dart';
import 'mom/m_experience.dart';
import 'mom/m_store.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.pink, statusBarIconBrightness: Brightness.light));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.pinkAccent,
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Pregcare(),
<<<<<<< HEAD
        PregcareRoutes().momWeightRoute: (context) => MWeight(),
        PregcareRoutes().momArticleRoute: (context) => ArticlesPage(),
        PregcareRoutes().momStoreRoute: (context) => Mstore(),
=======
        PregcareRoutes().momWeightRoute: (context) => const MWeight(),
        PregcareRoutes().momArticleRoute: (context) => const ArticlesPage(),
        PregcareRoutes().momExperienceRoute: (context) => const ExperiencesPage(),
        PregcareRoutes().momStoreRoute: (context) => const Mstore()
>>>>>>> 2bddb4c19bd124193f59ce226498917278ed9ddb
      },
    );
  }
}
