import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pregcare/auth/login.dart';
import 'package:pregcare/auth/login_controller.dart';
import 'package:pregcare/mom/m_weight.dart';
import 'package:pregcare/pages/pregcare.dart';
import 'package:pregcare/utils/routes.dart';
import 'mom/m_articles.dart';
import 'mom/m_experience.dart';
import 'mom/m_store.dart';
import 'mom/m_exercise.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(

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

        appBarTheme: AppBarTheme(
          color: Colors.pink,

        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      initialRoute: "/",
      routes: {

        "/": (context) => const Pregcare(),
        PregcareRoutes().momWeightRoute: (context) => const MWeight(),

        "/": (context) => LoginController().handleAuthState(),
        PregcareRoutes().homeRoute: (context) => const Pregcare(),
        PregcareRoutes().momWeightRoute: (context) => MWeight(),
        PregcareRoutes().momWeightRoute: (context) => MWeight(),

        PregcareRoutes().momArticleRoute: (context) => const ArticlesPage(),
        PregcareRoutes().momExperienceRoute: (context) =>
            const ExperiencesPage(),
        PregcareRoutes().momStoreRoute: (context) => const Mstore(),
        PregcareRoutes().momExerciseRoute: (context) => MExercise()
      },
    );
  }
}
