import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class MyTools extends StatefulWidget {
  const MyTools({super.key});

  @override
  State<MyTools> createState() => _MyToolsState();
}

class _MyToolsState extends State<MyTools> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // component 1-->Button
        child: Column(
          children: [
            Center(),
            Container(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Material(
                elevation: 8,
                borderRadius: BorderRadius.circular(100),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black54,
                  onTap: () {},
                  child: Ink.image(
                    image: AssetImage('assets/images/redButton.png'),
                    height: 200,
                    width: 225,
                    fit: BoxFit.cover,
                    child: Center(
                      child: Text(
                        'SOS',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // ROW 1 (tools)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width:
                      150, // Container child widget will get this width value
                  height:
                      225, // Container child widget will get this height value
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Material(
                    color: Colors.greenAccent[700],
                    elevation: 8,
                    borderRadius: BorderRadius.circular(26),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black54,
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(),
                          Ink.image(
                            image: AssetImage('assets/images/location.png'),
                            height: 100,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Get Location',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width:
                      150, // Container child widget will get this width value
                  height:
                      225, // Container child widget will get this height value
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Material(
                    color: Colors.lightBlueAccent,
                    elevation: 8,
                    borderRadius: BorderRadius.circular(26),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black54,
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(),
                          Ink.image(
                            image: AssetImage('assets/images/doctor.png'),
                            height: 100,
                            width: 200,
                            fit: BoxFit.fitHeight,
                          ),
                          Center(
                            child: Text(
                              'Consult with Doctor',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // ROW 2 (tools)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width:
                      150, // Container child widget will get this width value
                  height:
                      225, // Container child widget will get this height value
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Material(
                    color: Colors.amber[600],
                    elevation: 8,
                    borderRadius: BorderRadius.circular(26),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black54,
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(),
                          Ink.image(
                            image: AssetImage('assets/images/calender.png'),
                            height: 100,
                            width: 200,
                            fit: BoxFit.fitHeight,
                          ),
                          Text(
                            'Important Dates',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width:
                      150, // Container child widget will get this width value
                  height:
                      225, // Container child widget will get this height value
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Material(
                    color: Colors.amber[600],
                    elevation: 8,
                    borderRadius: BorderRadius.circular(26),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black54,
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage('assets/images/calender.png'),
                            height: 100,
                            width: 200,
                            fit: BoxFit.fitHeight,
                          ),
                          Text(
                            'Replace New Tools',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// Need to add this-->
    // theme:
    // ThemeData(primaryTextTheme: GoogleFonts.latoTextTheme());