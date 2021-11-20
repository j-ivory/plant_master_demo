//flutter imports
import 'package:flutter/material.dart';

//project files imports
import 'package:plant_master_demo/Theme/theme_data.dart';
import 'package:plant_master_demo/Theme/colors.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  _SavedScreenState createState() => _SavedScreenState();
}
class _SavedScreenState extends State<SavedScreen> {

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SafeArea(
          child: Column(
            children: [
               Text(
                  'Saved',
                  style: ThemeText.headerLarge,
               ),
               // Padding(
               //   padding: const EdgeInsets.all(20.0),
               //   child: TextField(
               //     //obscureText: true,
               //     decoration: InputDecoration(
               //       border: OutlineInputBorder(),
               //       labelText: 'Search',
               //     ),
               //   ),
               // ),


              // ElevatedButton(
              //   // Within the `FirstScreen` widget
              //   onPressed: () {
              //     // Navigate to the second screen using a named route.
              //     Navigator.pushNamed(context, '/home');
              //   },
              //   child: const Text('Enter'),
              // ),
            ],
          ),
        ),
      );
  }
}