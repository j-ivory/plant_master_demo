//flutter imports
import 'package:flutter/material.dart';

//project files imports
import 'package:plant_master_demo/Theme/theme_data.dart';
import 'package:plant_master_demo/Theme/colors.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}
class _TestScreenState extends State<TestScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Column(
            children: [
              Center(
                child: Text(
                  'Home',
                  style: ThemeText.headerLarge,
                ),
              ),
              Spacer(),
              Text(
                'Plant of the Day',
                style: ThemeText.headerMedium,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset('assets/images/aloe-picture.jpg'),
              ),
              Spacer(
                flex: 4,
              ),
            ],
          ),
        );
  }
}