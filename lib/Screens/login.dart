//flutter imports
import 'package:flutter/material.dart';

//project files imports
import 'package:plant_master_demo/Theme/theme_data.dart';
import 'package:plant_master_demo/main.dart';
import 'package:plant_master_demo/Data Source/card.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final myController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
                  controller: myController,
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
                  controller: passwordController,
                ),
              ),
              ElevatedButton(
                // Within the `FirstScreen` widget
                onPressed: () {
                  // Navigate to the second screen using a named route.
                  Navigator.pushNamed(context, '/screens');

                  showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        content: Text("Username: ${myController.text}   Password: ${passwordController.text}")
                      );
                    },
                  );

                },
                child: const Text('Enter'),
              ),
              Spacer(
                flex: 2,
              ),
              //Image.asset('assets/images/loader.gif', scale: 8,),
            ],
          ),
        ),
      ),
    );
  }
}