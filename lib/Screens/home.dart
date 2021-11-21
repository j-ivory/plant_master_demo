//flutter imports
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
//project files imports
import 'package:plant_master_demo/Theme/theme_data.dart';
import 'package:plant_master_demo/Theme/colors.dart';
import 'package:plant_master_demo/Data Source/nature.dart';
import 'package:http/http.dart' as http;

late Future<Plant> futurePlant;

Future<Plant> fetchPlant() async {
  final response = await http
      .get(Uri.parse('https://explorer.natureserve.org/api/data/taxon/ELEMENT_GLOBAL.2.147299'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.

    // final jsonData = response.body;
    // final parsedJson = jsonDecode(jsonData);
    //
    // print('${parsedJson.runtimeType} : $parsedJson \n');

    return Plant.fromJson(jsonDecode(response.body)) ;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load plant card');
  }
}

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);


  @override
  _TestScreenState createState() => _TestScreenState();
}
class _TestScreenState extends State<TestScreen> {

  @override
  void initState() {
    super.initState();
    futurePlant = fetchPlant();
  }

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
              Card(
                child: FutureBuilder<Plant>(
                  future: futurePlant,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Center(
                        child: Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Scientific Name', style: ThemeText.headerSmall),
                              Text(snapshot.data!.scientificName),
                              Text('Primary Name', style: ThemeText.headerSmall),
                              Text(snapshot.data!.primaryCommonName),
                            ]),
                      );
                    } else if (snapshot.hasError) {
                      return Text('${snapshot.error}');
                    }

                    // By default, show a loading spinner.
                    return const CircularProgressIndicator();
                  },
                ),
              ),
              Spacer(
                flex: 4,
              ),

            ],
          ),
        );
  }
}