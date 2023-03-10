import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Exercise {
  final String exerciseType;
  final String exerciseImage;
  final String videoLink;

  const Exercise({
    required this.exerciseType,
    required this.exerciseImage,
    required this.videoLink,
  });
}

class ExerciseCard extends StatelessWidget {
  final Exercise exercise;

  const ExerciseCard({Key? key, required this.exercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            exercise.exerciseImage,
            fit: BoxFit.cover,
            height: 150.0,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    exercise.exerciseType,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: ElevatedButton(
                      onPressed: () {
                        String urlString = exercise.videoLink;
                        Uri uri = Uri.parse(urlString);

                        if (uri.scheme == 'http' || uri.scheme == 'https') {
                          launchUrl(uri);
                        } else {
                          debugPrint('Unsupported URL scheme: ${uri.scheme}');
                        }
                      },
                      // child: const Center(
                      child: const Text(
                        'Watch Video',
                        style: TextStyle(fontSize: 15),
                      ),
                      // ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
