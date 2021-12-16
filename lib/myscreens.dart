//flutter imports
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plant_master_demo/Screens/profile_page.dart';
//project files imports
import 'package:plant_master_demo/Theme/theme_data.dart';
import 'package:provider/provider.dart';
import 'Data Source/SavedModel.dart';
import 'Theme/colors.dart';
import 'package:plant_master_demo/Screens/login.dart';
import 'package:plant_master_demo/Screens/search.dart';
import 'package:plant_master_demo/Screens/learn.dart';
import 'package:plant_master_demo/Screens/saved.dart';
import 'package:plant_master_demo/Screens/settings.dart';
import 'package:plant_master_demo/Screens/home.dart';
import 'package:plant_master_demo/Screens/quiz.dart';

User? userSet = FirebaseAuth.instance.currentUser ;

class MyScreens extends StatefulWidget {
  //var buildContext;

  // MyScreens({Key? key, required this.buildContext})
  //     : super(key: key);
  @override
  MyScreensState createState() => new MyScreensState();
}

class MyScreensState extends State<MyScreens> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      //print(index);
      _returnPage(index);
    });
  }

  Widget _returnPage(int index) {
    switch (index){
      case 0:{
        return TestScreen();
      }
      break;

      case 1:{
        return SearchScreen();
      }
      break;

      case 2:{
        return LearnScreen();
      }
      break;

      case 3:{
        return SavedScreen();
      }
      break;

      case 4:{

        return SettingsScreen(user: userSet);
      }
      break;

      default:{
        return TestScreen();
      }
    }
  }

  List<Widget> pages = [
    TestScreen(),
    SearchScreen(),
    LearnScreen(),
    SavedScreen(),
    SettingsScreen(user: userSet),
    TestScreen(),
  ];
  // Widget settingsBodyScreen = Center(
  //   child: Column(
  //     children: [
  //       SafeArea(
  //         child: Text(
  //           'Settings',
  //           style: ThemeText.headerLarge,
  //         ),
  //       ),
  //     ],
  //   ),
  // );
  //

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SavedModel(),
      child: new Scaffold(

        body: IndexedStack(
          index: _selectedIndex,
          children: pages,
        ),
        ///body: //without state persistence
        //_returnPage(_selectedIndex),// <- change the page widget here

        bottomNavigationBar: new BottomNavigationBar( //persistent bottom nav bar
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors().background2,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'Learn',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.tune),
                label: 'Settings',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.green,
            onTap: _onItemTapped,
          ),
      ),
    );
  }
}