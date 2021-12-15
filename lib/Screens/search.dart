//flutter imports
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:plant_master_demo/Data Source/nature.dart';
import 'package:plant_master_demo/Data%20Source/SavedModel.dart';
import 'package:plant_master_demo/Data%20Source/page.dart';

//project files imports
import 'package:plant_master_demo/Theme/theme_data.dart';
import 'package:plant_master_demo/Theme/colors.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}
class _SearchScreenState extends State<SearchScreen> {

  final searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  ///search
  late List<Plant> plants;
  String initial_query = "Aloe";
  bool _isLoading = true;

  Icon cusIcon = Icon(Icons.search, color: Colors.green);
  Widget cusSearchBar = const Text("Search", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 50 ));

  Map<String, dynamic> searchJSON = {
    "criteriaType" : "species",
    "textCriteria" : [
      {
        "paramType": "quickSearch",
        "searchToken": '',
      }
    ],
    "statusCriteria" : [ ],
    "locationCriteria" : [ ],
    "pagingOptions" : {
      "page" : null,
      "recordsPerPage" : null
    },
    "recordSubtypeCriteria" : [ ],
    "modifiedSince" : null,
    "locationOptions" : null,
    "classificationOptions" : null,
    "speciesTaxonomyCriteria" : [
      {
        "paramType": "informalTaxonomy",
        "informalTaxonomy": "Plants"
      }
    ]
  };





  Future<List<Plant>> getPlant() async {
    String url = "https://explorer.natureserve.org/api/data/speciesSearch";
    var response = await post(
        Uri.parse(url),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        body: jsonEncode(searchJSON),
        encoding: Encoding.getByName("utf-8"));



    Map json = jsonDecode(response.body);

    //print(json);
    List _plantList = [];

    for (var i in json['results']) {
      _plantList.add(i);

    }
    //print(_plantList);
    return Plant.plantsFromSnapshot(_plantList);
  }

  Future<void> getPlants() async {
    plants = await getPlant();
    setState(() {
      _isLoading = false;
    });
  }

  // void _pushSaved() {
  //   Navigator.of(context)
  //       .push(MaterialPageRoute(builder: (BuildContext context) {
  //     final Iterable<ListTile> tiles = savedPlant.map((Plant p) {
  //       final alreadySaved = savedPlant.contains(p);
  //       return ListTile(
  //         title: Text(p.scientificName),
  //         subtitle: Text(p.primaryCommonName),
  //         trailing: IconButton(
  //           icon: Icon(alreadySaved ? Icons.favorite : Icons.favorite_border,
  //               color: alreadySaved ? Colors.red : null),
  //           onPressed: ()
  //           {
  //             setState(() {
  //               if (alreadySaved) {
  //                 savedPlant.remove(p);
  //               } else {
  //                 savedPlant.add(p);
  //               }
  //             });
  //           },
  //         ),
  //         onTap: (){
  //           setState(() {
  //             Navigator.push(context,
  //                 MaterialPageRoute(builder: (context) => PlantPage(p))
  //             );
  //           });
  //         },
  //       );
  //     });
  //
  //     final List<Widget> divided =
  //     ListTile.divideTiles(context: context, tiles: tiles).toList();
  //
  //     return Scaffold(
  //         appBar: AppBar(title: const Text('Saved Plant'),
  //           backgroundColor: Colors.green,
  //         ),
  //
  //         body: ListView(children: divided));
  //   }));
  // }




  @override
  void initState(){
    super.initState();
    searchJSON["textCriteria"][0]["searchToken"] = initial_query;
    getPlants();
  }

  ///search

  @override
  Widget build(BuildContext context) {
    return //Center(
//         child: SafeArea(
//           child: Column(
//             children: [
//                Text(
//                   'Search',
//                   style: ThemeText.headerLarge,
//                ),
//                Padding(
//                  padding: const EdgeInsets.all(20.0),
//                  child:
//                      TextField(
//                        //obscureText: true,
//                        decoration: InputDecoration(
//                          border: OutlineInputBorder(),
//                          labelText: 'Search',
//                        ),
//                        controller: searchController,
//                      ),
//                  ),
//               ElevatedButton(
//                 onPressed: () {
//                   showDialog(
//                     context: context,
//                     builder: (context) {
//                       return AlertDialog(
//                         // Retrieve the text the that user has entered by using the
//                         // TextEditingController.
//                         content: Text(searchController.text),
//                       );
//                     },
//                   );
//                 },
//                 child: const Text('Submit'),
//               ),
//
//
//               // ElevatedButton(
//               //   // Within the `FirstScreen` widget
//               //   onPressed: () {
//               //     // Navigate to the second screen using a named route.
//               //     Navigator.pushNamed(context, '/home');
//               //   },
//               //   child: const Text('Enter'),
//               // ),
//             ],
//           ),
//         ),
//       );
//   }
// }
      Consumer<SavedModel>(
          builder: (context, saved, _) {
            return Scaffold(
              appBar: AppBar(
                  elevation: 0,
                  backgroundColor: AppColors().background,
                  actions: <Widget>[
                    IconButton(icon: cusIcon, onPressed: () {
                      setState(() {
                        if (cusIcon.icon == Icons.search) {
                          cusIcon = Icon(Icons.cancel, color: Colors.green);
                          cusSearchBar = TextField(
                              textInputAction: TextInputAction.go,
                              onSubmitted: (String value) async {
                                searchJSON["textCriteria"][0]["searchToken"] =
                                    value;
                                getPlants();
                              },
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Scientific or Common Name"
                              ),
                              style: const TextStyle(
                                  color: Colors.green,
                                  fontSize: 16.0
                              )
                          );
                        }
                        else {
                          cusIcon = Icon(Icons.search, color: Colors.green);
                          cusSearchBar = const Text("Search", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 50 ) );
                        }
                      });
                    }),
                    //IconButton(icon: Icon(Icons.list), onPressed: () {})

                  ],
                  title: cusSearchBar
              ),
              body: _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                itemCount: plants.length,
                itemBuilder: (context, index) {
                  // if (index.bitLength == 0){
                  //   return ListTile(title: Text('This is useless'),);
                  // }
                  final alreadySaved = saved.savedList.contains(plants[index]);
                  return ListTile(
                    // leading: CircleAvatar(
                    //   backgroundImage: NetworkImage(
                    //       snapshot.data[index].picture
                    //   ),
                    // ),
                    title: Text(plants[index].scientificName),
                    subtitle: Text(plants[index].primaryCommonName),
                    trailing: IconButton(
                      icon: Icon(
                          alreadySaved ? Icons.favorite : Icons.favorite_border,
                          color: alreadySaved ? Colors.red : null),
                      onPressed: () {
                        setState(() {
                          if (alreadySaved) {
                            saved.remove(plants[index]);
                          } else {
                            saved.add(plants[index]);
                          }
                        });
                      },
                    ),
                    onTap: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                                PlantPage(plants[index]))
                        );
                      });
                    },
                  );
                },
              ),
            );
          }
      );
  }
}