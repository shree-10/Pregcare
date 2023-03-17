import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pregcare/auth/login.dart';
import 'package:pregcare/auth/login_controller.dart';
import 'package:pregcare/baby/b_store.dart';
import 'package:pregcare/mom/m_weight.dart';
import 'package:pregcare/pages/pregcare.dart';
import 'package:pregcare/utils/routes.dart';
import 'mom/m_articles.dart';
import 'mom/m_experience.dart';
import 'mom/m_store.dart';
import 'mom/m_exercise.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.pink, statusBarIconBrightness: Brightness.light));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.pinkAccent,
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const Pregcare(),
        PregcareRoutes().momWeightRoute: (context) => const MWeight(),
// comment these line to be able to view the app without firebase authentication
        // ignore: equal_keys_in_map
        "/": (context) => LoginController().handleAuthState(),
        // also comment app drawer in the m_main of mom page
        // dont forget to uncomment these before doing commit or
        // else firebase person will have to find out what's wrong
        PregcareRoutes().homeRoute: (context) => const Pregcare(),
        PregcareRoutes().momWeightRoute: (context) => const MWeight(),
        PregcareRoutes().momWeightRoute: (context) => const MWeight(),
        PregcareRoutes().momArticleRoute: (context) => const ArticlesPage(),
        PregcareRoutes().momExperienceRoute: (context) =>
            const ExperiencesPage(),
        PregcareRoutes().momStoreRoute: (context) => const Mstore(),
        PregcareRoutes().momExerciseRoute: (context) => MExercise(),
        PregcareRoutes().babyStoreRoute: (context) => const BStore(),
      },
    );
  }
}
