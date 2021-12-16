import 'package:flutter/material.dart';
import 'package:plant_master_demo/Theme/colors.dart';
import 'package:plant_master_demo/Theme/theme_data.dart';
import 'nature.dart';

class PlantPage extends StatelessWidget {
  //const PlantPage({Key? key}) : super(key: key);

  final Plant plant;

  PlantPage(this.plant);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   //title: Text("${plant.primaryCommonName} Info"),
      //     elevation: 0,
      //     backgroundColor: AppColors().background,
      //   title: Text("", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 30 )),
      // ),
      body: SafeArea(
        minimum: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: 700,
            height: 1300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 30 )),
                Center(
                  child: plant.primaryCommonName=='No Data' ?
                  Text(
                    "${plant.scientificName}",
                    style: TextStyle(fontSize: 45),
                  ) : Text(
                    "${plant.primaryCommonName}",
                    style: TextStyle(fontSize: 45),
                  )

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
                  child: Image.asset('assets/images/aloe-picture.jpg'),
                ),
                Card(
                  color: AppColors().background,
                  elevation: 0,
                  child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(plant.scientificName, style: ThemeText.bodyLarger,),
                              Text('Scientific Name', style: ThemeText.body, textAlign: TextAlign.left,),
                              SizedBox(height: 15),

                              Text(plant.primaryCommonName, style: ThemeText.bodyLarger,),
                              Text('Common Name', style: ThemeText.body, textAlign: TextAlign.left,),
                              SizedBox(height: 15),

                              Text(plant.informalTaxonomy, style: ThemeText.bodyLarger,),
                              Text('Taxonomy', style: ThemeText.body, textAlign: TextAlign.left,),
                              SizedBox(height: 15),
                              Text(plant.Family, style: ThemeText.bodyLarger,),
                              Text('Family', style: ThemeText.body, textAlign: TextAlign.left,),
                              SizedBox(height: 15),

                            ]
                  ),
                ),
                Spacer(
                  flex: 4,
                ),
                // Text('make it overflow!', style: TextStyle(fontSize: 50)),


              ],
            ),
          ),
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