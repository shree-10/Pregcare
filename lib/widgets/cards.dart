import 'package:flutter/material.dart';

class MomTileCrad extends StatelessWidget {
  final String title_text;
  final String image_url;
  final String openUrl;
  MomTileCrad(
      {super.key,
      required this.title_text,
      required this.image_url,
      required this.openUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      // color: Color.fromARGB(255, 199, 185, 249),
      child: InkWell(
        onTap: (() {
          print("hello");
        }),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              Image.asset(
                image_url,
                fit: BoxFit.fill,
                height: 100,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                title_text,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
