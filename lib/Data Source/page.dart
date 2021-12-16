import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:plant_master_demo/Theme/colors.dart';
import 'package:plant_master_demo/Theme/theme_data.dart';
import 'nature.dart';
import 'photo.dart';
import 'package:http/http.dart' as http;

Future<Photo> fetchPhotoPage(String query) async {
  var response;
  do {
    Map<String, dynamic> searchJSON = {
      "engine": "google",
      "q" : "",
      "api_key": "c36f9742694de0e993dd584d46b552406398f66348f1036519726d6ecb977171"
    };
    searchJSON["q"] = query.replaceAll(" ", '+');
    String url = "https://serpapi.com/search.json?engine=${searchJSON["engine"]}&q=${searchJSON["q"]}&google_domain=google.com&tbm=isch&num=1&ijn=1&api_key=${searchJSON["api_key"]}";

    response = await http.get(Uri.parse(url));
  }
  while (response.statusCode != 200);

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.

    // final jsonData = response.body;
    // final parsedJson = jsonDecode(jsonData);
    //
    // print('${parsedJson.runtimeType} : $parsedJson \n');

    Photo a = Photo.fromJson(jsonDecode(response.body));
    //print(a.photo_url);
    return a;


  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load plant card');

  }
}

class PlantPage extends StatefulWidget {
  //const PlantPage({Key? key}) : super(key: key);

  final Plant plant;

  PlantPage(this.plant);

  @override
  State<PlantPage> createState() => _PlantPageState();
}

class _PlantPageState extends State<PlantPage> {
  late Future<Photo> plantImage;

  @override
  void initState() {
    super.initState();
    plantImage = fetchPhotoPage(widget.plant.scientificName);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text("${plant.primaryCommonName} Info"),
        backgroundColor: Colors.green,
        title: Text('Info')
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "${widget.plant.primaryCommonName}",
                style: ThemeText.headerLarge,
              ),
            ),
            SizedBox(height:5),
            //Spacer(),
            Center(
              child: Text(
                '',
                style: ThemeText.headerMedium,
                textAlign: TextAlign.center,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
              child: FutureBuilder<Photo>(
                  future: plantImage,
              builder: (context,snapshot) {
                      if (snapshot.hasData){
                            return Center(child:Image.network(snapshot.data!.photo_url, fit: BoxFit.cover));
                      }
                      else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }
                return Center(child: const CircularProgressIndicator());
              },
            ),
            ),
            Card(
              color: AppColors().background,
              elevation: 0,
              child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.plant.scientificName, style: ThemeText.bodyLarger,),
                          Text('Scientific Name', style: ThemeText.body, textAlign: TextAlign.left,),
                          SizedBox(height: 15),
                          Text(widget.plant.primaryCommonName, style: ThemeText.bodyLarger,),
                          Text('Primary Name', style: ThemeText.body, textAlign: TextAlign.left,),
                          SizedBox(height: 15),

                          Text(widget.plant.informalTaxonomy, style: ThemeText.bodyLarger,),
                          Text('Taxonomy', style: ThemeText.body, textAlign: TextAlign.left,),
                          SizedBox(height: 15),
                          Text(widget.plant.Family, style: ThemeText.bodyLarger,),
                          Text('Family', style: ThemeText.body, textAlign: TextAlign.left,),
                          SizedBox(height: 15),

                        ]
              ),
            ),
            Spacer(
              flex: 4,
            ),

          ],
        ),
      ),
    );
















    //   Scaffold(
    //     appBar: AppBar(
    //       title: Text(plant.scientificName),
    //       backgroundColor: Colors.green,
    //     ),
    //     body: Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Text(plant.scientificName),
    //           Text(plant.primaryCommonName),
    //           Text(plant.taxonomicComments),
    //           Text(plant.informalTaxonomy),
    //           Text(plant.Kingdom),
    //           Text(plant.Phylum),
    //           Text(plant.Class),
    //           Text(plant.Order),
    //           Text(plant.Family),
    //           Text(plant.Genus),
    //         ],
    //       ),
    //     )
    // );
  }
}