// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pregcare/auth/login_controller.dart';
import 'package:pregcare/widgets/m_dialogue.dart';

class MyDrawer extends StatelessWidget {
  String email;
  String avtar_img;
  String name;

  MyDrawer(
      {super.key,
      required this.email,
      required this.avtar_img,
      required this.name});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.pink),
              margin: EdgeInsets.zero,
              accountName: Text(name),
              accountEmail: Text(email),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(avtar_img),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text("Home"),
            onTap: () => print("home"),
            tileColor: Colors.deepPurple[50],
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text("Profile"),
            onTap: () => print("profile"),
            tileColor: Colors.pink[50],
          ),
          ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text("Email"),
            onTap: () => print("email"),
            tileColor: Colors.pink[50],
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text("Logout"),
            onTap: (() {
              showDialog(
                  context: context,
                  builder: ((context) => MyDialogue().logotDialogue(context)));
            }),
            tileColor: Colors.pink[50],
          ),
        ],
      ),
    );
  }
}
