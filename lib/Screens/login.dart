//flutter imports
import 'package:flutter/material.dart';

//project files imports
import 'package:plant_master_demo/Theme/theme_data.dart';
import 'package:plant_master_demo/main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Text(
                'Plant Master',
                style: ThemeText.title,
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  'Sign In',
                  style: ThemeText.headerMedium,
                ),
              ),
              //Spacer(),
              Text(
                'Email/Username',
                style: ThemeText.body,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  //obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email/Username',
                  ),
                ),
              ),
              Text(
                'Password',
                style: ThemeText.body,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              ElevatedButton(
                // Within the `FirstScreen` widget
                onPressed: () {
                  // Navigate to the second screen using a named route.
                  Navigator.pushNamed(context, '/screens');
                },
                child: const Text('Enter'),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}