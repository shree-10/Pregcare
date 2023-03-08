import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pregcare/auth/login.dart';
import 'package:pregcare/auth/login_controller.dart';
import 'package:pregcare/mom/m_weight.dart';
import 'package:pregcare/pages/pregcare.dart';
import 'package:pregcare/utils/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
          color: Colors.pink,
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginController().handleAuthState(),
        PregcareRoutes().homeRoute: (context) => Pregcare(),
        PregcareRoutes().momWeightRoute: (context) => MWeight(),
      },
    );
  }
}
