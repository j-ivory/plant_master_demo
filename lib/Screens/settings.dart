//flutter imports
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

//project files imports
import 'package:plant_master_demo/Theme/theme_data.dart';
import 'package:plant_master_demo/Theme/colors.dart';
import 'package:plant_master_demo/utils/fire_auth.dart';

import 'login_page.dart';

class SettingsScreen extends StatefulWidget {
  final User? user;
  SettingsScreen({required this.user});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isSendingVerification = false;
  bool _isSigningOut = false;

  late User _currentUser;

  @override
  void initState() {
    _currentUser = widget.user!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Settings', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 50 )),
      // backgroundColor: AppColors().background,),

      body:SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Text('Settings', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 50 ))),
                Spacer(),
                Text('${_currentUser.displayName}', style: ThemeText.bodyLarger,),
                Text('Name', style: ThemeText.body, textAlign: TextAlign.left,),
                SizedBox(height: 16.0),
                Text('${_currentUser.email}', style: ThemeText.bodyLarger,),
                Text('Email', style: ThemeText.body, textAlign: TextAlign.left,),
                SizedBox(height: 40.0),

                _isSendingVerification
                    ? CircularProgressIndicator()
                    : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          _isSendingVerification = true;
                        });
                        await _currentUser.sendEmailVerification();
                        setState(() {
                          _isSendingVerification = false;
                        });
                      },
                      child: Text('Verify email'),
                    ),
                    SizedBox(width: 8.0),
                    IconButton(
                      icon: Icon(Icons.refresh),
                      onPressed: () async {
                        User? user = await FireAuth.refreshUser(_currentUser);

                        if (user != null) {
                          setState(() {
                            _currentUser = user;
                          });
                        }
                      },
                    ),
                  ],
                ),
                _currentUser.emailVerified
                    ? Text(
                  'Email verified',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.green),
                )
                    : Text(
                  'Email not verified',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.red),
                ),
                SizedBox(height: 16.0),


                SizedBox(height: 16.0),
                Spacer(flex:8),
                _isSigningOut
                    ? CircularProgressIndicator()
                    : Center(
                      child: ElevatedButton(
                  onPressed: () async {
                      setState(() {
                        _isSigningOut = true;
                      });
                      await FirebaseAuth.instance.signOut();
                      setState(() {
                        _isSigningOut = false;
                      });
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                  },
                  child: Text('Sign out'),
                  style: ElevatedButton.styleFrom(
                      primary: AppColors().aux_red,
                      //shape: RoundedRectangleBorder(
                        //borderRadius: BorderRadius.circular(30),
                      // ),
                  ),
                ),
                    ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
    );
  }
}