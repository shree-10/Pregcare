import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:pregcare/tools/sos_details.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class SOS {
  sosFire(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? flag = prefs.getBool('numberSet');

    if (flag == true) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: ((context) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }));

      String? myNumber = await prefs.getString("myNumber");
      String? friend = await prefs.getString("friendNumber");
      String? ambulence = await prefs.getString("ambulenceNumber");
      String? hospital = await prefs.getString("hospitalNumber");

      String uri = "https://pregcare.000webhostapp.com/sms/index.php";

      try {
        http.Response res = await http.post(Uri.parse(uri), body: {
          'myNumber': myNumber.toString(),
          'friendNumber': friend.toString(),
          'ambulenceNumber': ambulence.toString(),
          'hospitalNumber': hospital.toString()
        });

        var response = jsonDecode(res.body);

        if (response['success'] == true) {
          Navigator.of(context, rootNavigator: true).pop();

          await FlutterPhoneDirectCaller.callNumber("+91$friend");

          print("message send");
        } else {
          print("message not send");
          Navigator.of(context, rootNavigator: true).pop();
        }

        // _sendSMS(message, recipents);
      } catch (e) {
        print(e);
      }
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SosNumbersForm()),
      );
    }
  }
}
