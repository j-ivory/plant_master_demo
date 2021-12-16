//flutter imports
import 'package:flutter/material.dart';
import 'package:plant_master_demo/Screens/login_page.dart';
import 'package:provider/provider.dart';

//project files imports
import 'package:plant_master_demo/Theme/theme_data.dart';
import 'Screens/quiz.dart';
import 'Screens/quizPageFrame.dart';
import 'Theme/colors.dart';
import 'package:plant_master_demo/Screens/login.dart';
// import 'package:plant_master_demo/Screens/home.dart';
// import 'package:plant_master_demo/Screens/search.dart';
// import 'package:plant_master_demo/Screens/learn.dart';
// import 'package:plant_master_demo/Screens/saved.dart';
// import 'package:plant_master_demo/Screens/settings.dart';
import 'package:plant_master_demo/myscreens.dart';
import 'package:plant_master_demo/Data Source/SavedModel.dart';


void main() {
  runApp(
    MyApp(),
  );  //MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Master App Demo',
      theme: CustomTheme.lightTheme,
      //initialRoute: '/',
      routes: {
        // '/': (context) => const LoginScreen(),

        '/': (context) => LoginPage(),

        '/quiz': (context) => QuizPageFrame(),

        // '/home': (context) => const HomeScreen(),
        // '/search': (context) => const SearchScreen(),
        // '/learn': (context) => const LearnScreen(),
        // '/saved': (context) => const SavedScreen(),
        // '/settings': (context) => const SettingsScreen(),


        // '/screens': (context) => MyScreens(),
      }
    );
  }
}














///garbage bin below


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Plant Master',
                style: ThemeText.title,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                '$_counter',
                style: ThemeText.headerMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Tired of not knowing plants? Embarrassed by your meager botanical wisdom... Grow your plant knowledge! Learn and master plant identification with the help of Plant Master',
                style: ThemeText.body,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'This is HEADER text',
                style: ThemeText.headerSmall,
              ),
            ),
            ElevatedButton(
              child: Text("Click Here", style: ThemeText.body,),
              onPressed: () {
                _decrementCounter();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Large Header',
                style: ThemeText.headerLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Medium Header',
                style: ThemeText.headerMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.nature),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
