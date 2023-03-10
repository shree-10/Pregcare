import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/exercise_cards.dart';

class MExercise extends StatelessWidget {
  MExercise({Key? key}) : super(key: key);

  final List<Exercise> exerciseItems = [
    const Exercise(
      exerciseType: "Full Body",
      exerciseImage: "assets/images/love-g3bfe8f28e_1280.jpg",
      videoLink: "https://youtu.be/ZZIl3ZwcyRg",
    ),
    const Exercise(
      exerciseType: "Upper Body",
      exerciseImage: "assets/images/mE_upperBody.png",
      videoLink: "https://youtu.be/cFB_YEuv520",
    ),
    const Exercise(
      exerciseType: "Lower Body",
      exerciseImage: "assets/images/mE_lowerBody.png",
      videoLink: "https://youtu.be/FQYKwG_tuBo",
    ),
    const Exercise(
      exerciseType: "Yoga",
      exerciseImage: "assets/images/mE_yoga.png",
      videoLink: "https://youtu.be/D75ClMK09TA",
    ),
    const Exercise(
      exerciseType: "Meditation",
      exerciseImage: "assets/images/mE_meditation.png",
      videoLink: "https://youtu.be/D75ClMK09TA",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<ExerciseCard> exerciseCards = buildExerciseCards(exerciseItems);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Exercise",
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: exerciseCards.length,
        itemBuilder: (BuildContext context, int index) {
          return exerciseCards[index];
        },
      ),
    );
  }
}

List<ExerciseCard> buildExerciseCards(List<Exercise> exercises) {
  return exercises.map((exercise) => ExerciseCard(exercise: exercise)).toList();
}
