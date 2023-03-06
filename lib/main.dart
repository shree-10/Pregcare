import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pregcare/mom/m_weight.dart';
import 'package:pregcare/mom/m_store.dart';
import 'package:pregcare/pages/pregcare.dart';
import 'package:pregcare/utils/routes.dart';
import 'mom/m_articles.dart';

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
        PregcareRoutes().momWeightRoute: (context) => MWeight(),
        PregcareRoutes().momArticleRoute: (context) => ArticlesPage()
      },
    );
  }
}
