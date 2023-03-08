
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class ArticlesPage extends StatefulWidget {
  const ArticlesPage({Key? key}) : super(key: key);

  @override
  _ArticlesPageState createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  String selectedCategory = "Health";

  List<Map<String, String>> articles = [
    {"title": "Pregnancy Health: Your Guide to Prenatal Vitamins",
      "source": "What to Expect",
      "image": "assets/images/love-g3bfe8f28e_1280.jpg",
      "category": "Health"},
    {"title": "How to Sleep Comfortably While Pregnant",
      "source": "Healthline",
      "image": "assets/images/love-g3bfe8f28e_1280.jpg",
      "category": "Sleep"
    },
    {"title": "5 Tips for Staying Active During Pregnancy",
      "source": "The Bump",
      "image": "assets/images/love-g3bfe8f28e_1280.jpg",
      "category": "Fitness"},
    {"title": "The Benefits of Prenatal Yoga",
      "source": "American Pregnancy Association",
      "image": "assets/images/love-g3bfe8f28e_1280.jpg",
      "category": "Fitness"},
    {"title": "The Importance of a Balanced Diet During Pregnancy",
      "source": "National Institute of Child Health and Human Development",
      "image": "assets/images/love-g3bfe8f28e_1280.jpg",
      "category": "Health"},
    {"title": "How to Alleviate Back Pain During Pregnancy",
      "source": "Mayo Clinic",
      "image": "assets/images/love-g3bfe8f28e_1280.jpg",
      "category": "Health"},
    {"title": "Tips for Creating a Relaxing Sleep Environment During Pregnancy",
      "source": "Sleep Foundation",
      "image": "assets/images/love-g3bfe8f28e_1280.jpg",
      "category": "Sleep"}
  ];


  List<String> categories = ["Health", "Sleep", "Fitness"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          "Preg Care",
          style: GoogleFonts.dancingScript(
              fontWeight: FontWeight.w900, fontSize: 28, color: Colors.white),
        ),

        actions: [
          Row(
            children: [
              IconButton(
                onPressed: (() {
                  print("hello");
                }),
                icon: const Icon(Icons.sos_outlined),
              ),
            ],
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.pink,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Articles",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: categories.map((category) {
                    return ChoiceChip(
                      label: Text(category),
                      selected: selectedCategory == category,
                      onSelected: (selected) {
                        setState(() {
                          selectedCategory = category;
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: articles.length,
              itemBuilder: (BuildContext context, int index) {
                if (articles[index]['category'] == selectedCategory) {
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(
                          articles[index]['image']!,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                articles[index]['title']!,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                articles[index]['source']!,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return SizedBox.shrink();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}




