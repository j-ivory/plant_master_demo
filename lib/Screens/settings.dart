//flutter imports
import 'package:flutter/material.dart';

//project files imports
import 'package:plant_master_demo/Theme/theme_data.dart';
import 'package:plant_master_demo/Theme/colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}
class _SettingsScreenState extends State<SettingsScreen> {

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SafeArea(
          child: Column(
            children: [
               Text(
                  'Settings',
                  style: ThemeText.headerLarge,
               ),
              Spacer(),
              ElevatedButton(
                // Within the `FirstScreen` widget
                onPressed: () {
                  // Navigate to the second screen using a named route.
                  Navigator.pushNamed(context, '/');
                },
                child: const Text('Log Out'),
              ),
              Spacer(),
            ],
          ),
        ),
      );
  }
}