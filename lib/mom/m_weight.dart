import 'package:flutter/material.dart';

class MWeight extends StatelessWidget {
  const MWeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Track Weight")),
      body: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://img.freepik.com/free-vector/mysterious-mafia-man-smoking-cigarette_52683-34828.jpg?w=740&t=st=1677479813~exp=1677480413~hmac=6f2d5d3a3a82c3d3b8955430cb4e7eb1f703927e45a1b665022f48e367f4ea7a",
            ),
            radius: 60,
          )
        ],
      ),
    );
  }
}
