import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pregcare/auth/login_controller.dart';
import 'package:pregcare/auth/slider.dart';
import 'package:pregcare/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<Features> imageUrls = [
    Features('assets/images/logo.png', 'We take care of you and your baby'),
    Features('assets/images/m_meal.png', 'We carry the best meal plan for you'),
    Features(
        'assets/images/m_exercise.png', 'Do exericese recommend by experts'),
  ];

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              "Preg Care",
              style: GoogleFonts.dancingScript(
                  fontWeight: FontWeight.w900,
                  fontSize: 28,
                  color: Colors.pink),
            ),
            SizedBox(
              height: 40,
            ),
            CarouselSliderWidget(features: imageUrls),
            SizedBox(
              height: 50,
            ),
            Text(
              "Login",
              style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Color.fromARGB(255, 1, 1, 20)),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: InkWell(
                onTap: () {
                  // GoogleSignIn().signIn();
                  LoginController().login();
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          height: 25,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Sign in with Google',
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color.fromARGB(255, 1, 1, 20)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Text(
              'Made with ❤️ in India',
              style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromARGB(255, 1, 1, 20)),
            ),
          ],
        ),
      ),
    );
  }
}
