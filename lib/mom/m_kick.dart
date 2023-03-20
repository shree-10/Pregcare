import 'package:flutter/material.dart';

class MKickCount extends StatefulWidget {
  const MKickCount({super.key});

  @override
  State<MKickCount> createState() => _MKickCountState();
}

class _MKickCountState extends State<MKickCount> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kick Count"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
                onTap: _incrementCounter,
                child: Image.asset(
                  "assets/images/footprint.png",
                  width: 120,
                )),
            SizedBox(
              height: 30,
            ),
            const Text(
              'Baby kick count on first kick',
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
