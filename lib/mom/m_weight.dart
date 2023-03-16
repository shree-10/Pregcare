import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MWeight extends StatefulWidget {
  const MWeight({super.key});

  @override
  _MWeightState createState() => _MWeightState();
}

class _MWeightState extends State<MWeight> {
  double _currentWeight = 0.0;

  @override
  void initState() {
    super.initState();
    _loadWeight();
  }

  _loadWeight() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _currentWeight = prefs.getDouble('currentWeight') ?? 0.0;
    });
  }

  _saveWeight(double newWeight) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('currentWeight', newWeight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weight Tracker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Current Weight: $_currentWeight kg',
              style: const TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    double newWeight = _currentWeight;
                    return AlertDialog(
                      title: const Text('Enter new weight'),
                      content: TextFormField(
                        keyboardType: TextInputType.number,
                        initialValue: _currentWeight.toString(),
                        onChanged: (value) {
                          newWeight = double.tryParse(value) ?? _currentWeight;
                        },
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            _saveWeight(newWeight);
                            Navigator.of(context).pop();
                            setState(() {
                              _currentWeight = newWeight;
                            });
                          },
                          child: const Text('Save'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Update Weight'),
            ),
          ],
        ),
      ),
    );
  }
}
