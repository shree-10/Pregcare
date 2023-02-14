import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:pregcare/baby/bbirth.dart';
import 'package:pregcare/baby/abirth.dart';
class Baby extends StatelessWidget {
  const Baby({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "Pregcare",
                style: TextStyle(fontSize: 21),
              ),
            ),
          ),
         ),
            body: Container(
             padding: const EdgeInsets.all(8.0),
             color: Colors.pink[100],
             width: 500,
             height: 700,
              child: ContainedTabBarView(
                     tabs: [
                        Text('Befor Birth'),
                        Text('After Birth'),
                      ],
                   views: [
                          bbirth(),
                          abirth(),
                        ],
                        onChange: (index) => print(index),
                     ),
        ),
      ),
    );
  }
}