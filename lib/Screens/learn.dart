//flutter imports
import 'package:flutter/material.dart';

//project files imports
import 'package:plant_master_demo/Theme/theme_data.dart';
import 'package:plant_master_demo/Theme/colors.dart';
import 'package:plant_master_demo/Data Source/list.dart';
import 'package:plant_master_demo/Data Source/nature.dart';
import 'package:plant_master_demo/Data Source/random.dart';

class LearnScreen extends StatefulWidget {
  const LearnScreen({Key? key}) : super(key: key);

  @override
  _LearnScreenState createState() => _LearnScreenState();
}
class _LearnScreenState extends State<LearnScreen> {

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SafeArea(
          child: Column(
            children: [
               Text(
                  'Learn',
                  style: ThemeText.headerLarge,
               ),
               Flexible(child: PlantList()),
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