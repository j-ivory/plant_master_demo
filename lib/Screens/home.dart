//flutter imports
import 'package:flutter/cupertino.dart';
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
          minimum: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Home',
                  style: ThemeText.headerLarge,
                ),
              ),

              Spacer(),
              Center(
                child: Text(
                  'Plant of the Day!',
                  style: ThemeText.headerMedium,
                  textAlign: TextAlign.center,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                child: Image.asset('assets/images/aloe-picture.jpg'),
              ),
              Card(
                color: AppColors().lightGreen,
                elevation: 0,
                child: FutureBuilder<Plant>(
                  future: futurePlant,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(snapshot.data!.scientificName, style: ThemeText.bodyLarger,),
                            Text('Scientific Name', style: ThemeText.body, textAlign: TextAlign.left,),
                            SizedBox(height: 15),
                            Text(snapshot.data!.primaryCommonName, style: ThemeText.bodyLarger,),
                            Text('Primary Name', style: ThemeText.body, textAlign: TextAlign.left,),
                            SizedBox(height: 15),
                          ]);
                    } else if (snapshot.hasError) {
                      return Text('${snapshot.error}');
                    }

                    // By default, show a loading spinner.
                    //return const CircularProgressIndicator();
                    return Center(child: Image.asset('assets/images/loader.gif', scale: 6,));
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