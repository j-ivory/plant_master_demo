//flutter imports
import 'package:flutter/material.dart';
import 'package:plant_master_demo/Data%20Source/page.dart';
import 'package:provider/provider.dart';

//project files imports
import 'package:plant_master_demo/Theme/theme_data.dart';
import 'package:plant_master_demo/Theme/colors.dart';
import 'package:plant_master_demo/Data Source/SavedModel.dart';
import 'package:plant_master_demo/Data Source/card.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  _SavedScreenState createState() => _SavedScreenState();
}
class _SavedScreenState extends State<SavedScreen> {

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
        child: SafeArea(
          child: Column(
            children: [
               Text(
                  'Saved',
                  //style: ThemeText.headerLarge,
                   style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 50 )
               ),
               SizedBox(height:10),
               Consumer<SavedModel>(
                 builder: (context, saved, _) {
                   return Flexible(
                     child: GridView.builder(
                       gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                           crossAxisSpacing: 5,
                           mainAxisSpacing: 20,
                           maxCrossAxisExtent: 250,
                           childAspectRatio: 5/4,
                       ),
                       itemCount: saved.totalSaved,
                       itemBuilder: (BuildContext context, int index) {
                         return GestureDetector(
                           onTap: (){
                             setState(() {
                               Navigator.push(context,
                                   MaterialPageRoute(builder: (context) => PlantPage(saved.savedList[index])));
                             },
                             );
                           },
                           child: PlantCard(
                               scientificName: '${saved.getScientificName(index)}',
                               commonName: '${saved.getCommonName(index)}',
                               plant: saved.savedList[index],
                           ),
                         );

                       },
                     ),
                   );
                 }
               )

               // Flexible(
               //   child: GridView.count(
               //     primary: false,
               //     padding: const EdgeInsets.all(20),
               //     crossAxisSpacing: 10,
               //     mainAxisSpacing: 10,
               //     crossAxisCount: 2,
               //     children: <Widget>[
               //       Consumer<SavedModel>(
               //         builder: (context, saved, _) {
               //           return Container(
               //             padding: const EdgeInsets.all(8),
               //             child: Text('${saved.totalSaved} Plants Saved'),
               //             color: AppColors().orangeMaterial[100],
               //           );
               //         },
               //       ),
               //       Consumer<SavedModel>(
               //         builder: (context, saved, _) {
               //           return PlantCard(
               //               scientificName: '${saved.getScientificName(0)}',
               //               commonName: '${saved.getCommonName(0)}',
               //           );
               //         },
               //       ),
               //       //PlantCard(scientificName: 'scientific', commonName: "common"),
               //       // Container(
               //       //   padding: const EdgeInsets.all(8),
               //       //   child: const Text("Mustard Flower"),
               //       //   color: AppColors().orangeMaterial[100],
               //       // ),
               //       // Container(
               //       //   padding: const EdgeInsets.all(8),
               //       //   child: const Text("Fig Tree"),
               //       //   color: AppColors().orangeMaterial[200],
               //       // ),
               //       // Container(
               //       //   padding: const EdgeInsets.all(8),
               //       //   child: const Text("Daisy"),
               //       //   color: AppColors().orangeMaterial[200],
               //       // ),
               //       // Container(
               //       //   padding: const EdgeInsets.all(8),
               //       //   child: const Text("Sunflower"),
               //       //   color: AppColors().orangeMaterial[300],
               //       // ),
               //       // Container(
               //       //   padding: const EdgeInsets.all(8),
               //       //   child: const Text("Banyan Tree"),
               //       //   color: AppColors().orangeMaterial[300],
               //       // ),
               //       // Container(
               //       //   padding: const EdgeInsets.all(8),
               //       //   child: const Text("Bonzai"),
               //       //   color: AppColors().orangeMaterial[400],
               //       // ),
               //       // Container(
               //       //   padding: const EdgeInsets.all(8),
               //       //   child: const Text("Good Job Isaac"),
               //       //   color: AppColors().orangeMaterial[400],
               //       // ),
               //       // Container(
               //       //   padding: const EdgeInsets.all(8),
               //       //   child: const Text("Dogwood Flower"),
               //       //   color: AppColors().orangeMaterial[500],
               //       // ),
               //     ]
               //   ),
               // )




               // Padding(
               //   padding: const EdgeInsets.all(20.0),
               //   child: TextField(
               //     //obscureText: true,
               //     decoration: InputDecoration(
               //       border: OutlineInputBorder(),
               //       labelText: 'Search',
               //     ),
               //   ),
               // ),


              // ElevatedButton(
              //   // Within the `FirstScreen` widget
              //   onPressed: () {
              //     // Navigate to the second screen using a named route.
              //     Navigator.pushNamed(context, '/home');
              //   },
              //   child: const Text('Enter'),
              // ),
            ],
          ),
        ),
      );
  }
}