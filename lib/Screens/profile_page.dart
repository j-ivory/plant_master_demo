import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plant_master_demo/Screens/login_page.dart';
import 'package:plant_master_demo/utils/fire_auth.dart';

import '../myscreens.dart';

class ProfilePage extends StatefulWidget {
  final User user;

  const ProfilePage({required this.user});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    MyScreens screens = MyScreens();
    return Scaffold(
        // appBar: AppBar(
        //     title: Text(''),
        //     actions: <Widget>[
        //       IconButton(icon: Icon(Icons.settings), onPressed: viewSettings)]
        // ),
        body: screens
    );
  }
}

