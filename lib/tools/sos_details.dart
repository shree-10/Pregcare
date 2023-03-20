import 'package:flutter/material.dart';
import 'package:pregcare/pages/pregcare.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SosNumbersForm extends StatefulWidget {
  @override
  _SosNumbersFormState createState() => _SosNumbersFormState();
}

class _SosNumbersFormState extends State<SosNumbersForm> {
  final _formKey = GlobalKey<FormState>();
  final _myNumberController = TextEditingController();
  final _friendNumberController = TextEditingController();
  final _ambulanceNumberController = TextEditingController();
  final _hospitalNumberController = TextEditingController();

  @override
  void dispose() {
    _myNumberController.dispose();
    _friendNumberController.dispose();
    _ambulanceNumberController.dispose();
    _hospitalNumberController.dispose();
    super.dispose();
  }

  saveNumbers() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('myNumber', _myNumberController.text.toString());

    await prefs.setString(
        'friendNumber', _friendNumberController.text.toString());

    await prefs.setString(
        'ambulenceNumber', _ambulanceNumberController.text.toString());

    await prefs.setString(
        'hospitalNumber', _hospitalNumberController.text.toString());

    await prefs.setBool('numberSet', true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Your Emergency Numbers")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _myNumberController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'My Number',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your Number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _friendNumberController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Close Friend Number',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Close Friend Number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _ambulanceNumberController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Ambulance Number',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Ambulance Number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _hospitalNumberController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Hospital Number',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Hospital Number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Implement SOS numbers saving logic here
                      saveNumbers();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Pregcare()),
                      );
                    }
                  },
                  child: Text('Save SOS Numbers'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
