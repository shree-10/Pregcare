import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
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
        body: Column(children: [
          Container(
            color: Colors.blue,
            child: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 4,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              tabs: [
                Container(
                  width: 25,
                  child: Tab(
                    icon: Icon(Icons.camera_alt),
                  ),
                ),
                Container(
                  width: 80,
                  child: Tab(
                    child: Row(
                      children: [
                        Text("chats"),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "10",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 90,
                  child: Tab(
                    child: Text("states"),
                  ),
                ),
                Container(
                  width: 90,
                  child: Tab(
                    child: Text("call"),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
