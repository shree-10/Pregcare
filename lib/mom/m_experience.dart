import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExperiencesPage extends StatefulWidget {
  const ExperiencesPage({Key? key}) : super(key: key);

  @override
  _ExperiencesPageState createState() => _ExperiencesPageState();
}

class _ExperiencesPageState extends State<ExperiencesPage> {
  final List<Map<String, String>> experiencesList = [
    {
      "image": "assets/images/love-g3bfe8f28e_1280.jpg",
      "review": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.",
    },
    {
      "image": "assets/images/love-g3bfe8f28e_1280.jpg",
      "review": "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.",
    },
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Preg Care"),
      ),
      body: Stack(
        children: [
          PageView.builder(
            itemCount: experiencesList.length,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(experiencesList[index]['image']!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black.withOpacity(0.4),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 50.0),
                          child: Text(
                            experiencesList[index]['review']!,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.fade,
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              );
            },
            onPageChanged: (int index) {
              setState(() {
                _index = index;
              });
            },
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
          ),
          Positioned(
            bottom: 20.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: experiencesList.map((experience) {
                int index = experiencesList.indexOf(experience);
                return Container(
                  width: 12.0,
                  height: 12.0,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 2.0,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _index == index ? Colors.white : Colors.grey,
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
