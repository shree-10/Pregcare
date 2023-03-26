import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MealPlan extends StatefulWidget {
  const MealPlan({Key? key}) : super(key: key);

  @override
  _MealPlanState createState() => _MealPlanState();
}

class _MealPlanState extends State<MealPlan> {
  String selectedCategory = "Monday";

  List<Map<String, String>> articles = [
    {
      "title": "Pre Breakfast Snack",
      "source":
          "8-12 pieces of dry fruits including cashew nuts, almonds, and raisins.",
      "image": "assets/images/PREBREAKFAST.png",
      "category": "Monday"
    },
    {
      "title": "Morning Breakfast",
      "source": "Moongdal chilla-3 +pudina/coconut chutney-2 tsp",
      "image": "assets/images/T_DINNER.png",
      "category": "Monday"
    },
    {
      "title": "Mid Morning Snack",
      "source": "Blueberry shake (1 cup)",
      "image": "assets/images/morningsnak.png",
      "category": "Monday"
    },
    {
      "title": "Lunch",
      "source": "1.5 cup Mutton biryani + Cucumber onion Raita (½ cup)",
      "image": "assets/images/lunch.png",
      "category": "Monday"
    },
    {
      "title": "Evening Snack",
      "source":
          "Sweet potato salad (cooked with 200 gms of sweet potato, 1 pinch of chat masala, and 1 tsp lemon juice) +  light tea (1 cup)",
      "image": "assets/images/afterlunch.png",
      "category": "Monday"
    },
    {
      "title": "Dinner",
      "source": "Wheat dosa 3 + ½ cup bitter gourd sabji ",
      "image": "assets/images/dinner.png",
      "category": "Monday"
    },
    ///////////////////monday
    {
      "title": "Pre Breakfast Snack",
      "source":
          "Homemade fruit juice with strawberries, pomegranate, guava, or oranges (1 glass)",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Tuesday"
    },
    {
      "title": "Morning Breakfast",
      "source": "Wheat dosa-4 + Tomato sabji (½ cup)",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Tuesday"
    },
    {
      "title": "Mid Morning Snack",
      "source": "Vegetable soup made with brocolli and garlic (1 bowl)",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Tuesday"
    },
    {
      "title": "Lunch",
      "source": "1.5 cup rice + 1 piece of chicken + 1 cup broccoli sabji",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Tuesday"
    },
    {
      "title": "Evening Snack",
      "source":
          "Mixed fruit salad made of mangoes, bananas, and berries of your choice (1 medium-sized plate)",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Tuesday"
    },
    {
      "title": "Dinner",
      "source": "Moongdal chilla-3 +pudina/coconut chutney-2 tsp",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Tuesday"
    },
    ////////tuesday
    {
      "title": "Pre Breakfast Snack",
      "source": "Banana milkshake (1 glass)",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Wednesday"
    },
    {
      "title": "Morning Breakfast",
      "source": "Veggie-rich sevai or upma (1 cup) + 2 medium-sized parathas",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Wednesday"
    },
    {
      "title": "Mid Morning Snack",
      "source": "Kaddu ka soup or pumpkin soup (1 bowl)",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Wednesday"
    },
    {
      "title": "Lunch",
      "source": "1.5 cup Mutton biryani + Cucumber onion Raita (½ cup)",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Wednesday"
    },
    {
      "title": "Evening Snack",
      "source": "10-14 pieces of dry fruits",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Wednesday"
    },
    {
      "title": "Dinner",
      "source": "Multigrain toast (2 in no.) with two sunny side up eggs",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Wednesday"
    },
    ///////Wednesday
    {
      "title": "Pre Breakfast Snack",
      "source": "Carrot juice (1 glass)",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Thursday"
    },
    {
      "title": "Morning Breakfast",
      "source": "Oatmeal (1 cup) + 2 boiled eggs",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Thursday"
    },
    {
      "title": "Mid Morning Snack",
      "source": "Banana milkshake (1 glass)",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Thursday"
    },
    {
      "title": "Lunch",
      "source": "1.5 cup rice, 1 piece mutton + 1 bowl masoor daal",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Thursday"
    },
    {
      "title": "Evening Snack",
      "source":
          "Mixed fruit salad made of mangoes, bananas, and berries of your choice (1 medium-sized plate)",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Thursday"
    },
    {
      "title": "Dinner",
      "source": "Veggie-rich poha (1 cup) + 2 moong dal chillas",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Thursday"
    },
    //Thursday
    {
      "title": "Pre Breakfast Snack",
      "source": "1 plain glass of milk",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Friday"
    },
    {
      "title": "Morning Breakfast",
      "source": "Veggie-rich poha (1 cup) + 2 moong dal chillas",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Friday"
    },
    {
      "title": "Mid Morning Snack",
      "source": "Tamatar or tomato soup (1 bowl)",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Friday"
    },
    {
      "title": "Lunch",
      "source": "1.5 cup chicken biryani + cucumber onion raita (½ cup)",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Friday"
    },
    {
      "title": "Evening Snack",
      "source":
          "Vegetable salad (1 plate) made with carrots, cucumber, and onions",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Friday"
    },
    {
      "title": "Dinner",
      "source": "Multigrain toast (2 in no.) with two sunny side up eggs",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Friday"
    },
    //Friday
    {
      "title": "Pre Breakfast Snack",
      "source": "Banana milkshake (1 glass)",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Saturday"
    },
    {
      "title": "Morning Breakfast",
      "source": "Oatmeal (1 cup) + 2 boiled eggs",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Saturday"
    },
    {
      "title": "Mid Morning Snack",
      "source": "Kaddu or pumpkin soup (1 bowl)",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Saturday"
    },
    {
      "title": "Lunch",
      "source": "1.5 cup rice, 1 piece mutton + 1 bowl masoor daal",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Saturday"
    },
    {
      "title": "Evening Snack",
      "source":
          "10-14 pieces of dry fruits including cashew nuts, almonds, and raisins",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Saturday"
    },
    {
      "title": "Dinner",
      "source": "Wheat dosa-4 + Tomato sabji (½ cup)",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Saturday"
    },
    //Saturday
    {
      "title": "Pre Breakfast Snack",
      "source": "1 plain glass of milk",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Sunday"
    },
    {
      "title": "Morning Breakfast",
      "source": "Veggie-rich sevai or upma (1 cup) + 2 medium-sized parathas",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Sunday"
    },
    {
      "title": "Mid Morning Snack",
      "source": "Peach milkshake (1 glass)",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Sunday"
    },
    {
      "title": "Lunch",
      "source":
          "1.5 cup vegetable khichdi + 1 piece chicken + 1 small bowl of dahi",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Sunday"
    },
    {
      "title": "Evening Snack",
      "source": "1 medium-sized avocado with 1 spoon of peanut butter",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Sunday"
    },
    {
      "title": "Dinner",
      "source": "Veggie-rich poha (1 cup) + 2 moong dal chillas",
      "image": "assets/images/T_PREBREAKFAST.png",
      "category": "Sunday"
    },
    //Sunday
  ];

  List<String> categories = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];

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
      drawer: const Drawer(
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
                const Text(
                  "Meal Plans",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
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
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                articles[index]['source']!,
                                style: const TextStyle(
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
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
