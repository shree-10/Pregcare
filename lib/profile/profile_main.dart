import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      appBar: AppBar(
        backgroundColor: Colors.pink,
        // center might be temporarily here
        // You should remove center if you want to add the drawer in this page
        title: Center(
          child: Text(
            "Preg Care",
            style: GoogleFonts.dancingScript(
                fontWeight: FontWeight.w900, fontSize: 28, color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(120),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black54,
                  onTap: () {},
                  child: Ink.image(
                    image: const AssetImage('assets/images/profile_mom.png'),
                    height: 215,
                    width: 215,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(height: 10),
            Text(
              'Neha Sharma', //replace with a variable with name of the user
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              'NehaSharma22@gmail.com', //replace with a variable with email of the user
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Container(height: 20),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  side: BorderSide.none,
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
