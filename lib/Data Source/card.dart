import 'package:flutter/material.dart';
import 'package:plant_master_demo/Theme/colors.dart';
import 'package:provider/provider.dart';
import 'package:plant_master_demo/Data Source/SavedModel.dart';
import 'package:plant_master_demo/Data Source/nature.dart';
import 'package:plant_master_demo/Theme/theme_data.dart';

class PlantCard extends StatelessWidget {
  final String scientificName;
  final String commonName;
  final Plant plant;

  PlantCard({required this.scientificName, required this.commonName, required this.plant});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Card(
      elevation: 0,
      color: AppColors().lightGreen,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/aloe-picture.jpg',
                   width: screenWidth/2.5,
                   height: screenWidth/3.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                //child: Icon(Icons.favorite, color: AppColors().orange, size: 40),
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                iconSize: 35,
                color: Colors.red,//AppColors().orange,
                onPressed: () {
                  Provider.of<SavedModel>(context, listen: false).remove(plant);
                  },
              ),
            ],
          ),
          SizedBox(height: 3),
          Text(scientificName,
            style: TextStyle(
              fontFamily: 'Open_Sans',
              color: Color.fromRGBO(232, 225, 217, 1),
              fontSize: 14,
              height: 1,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height:2),
          Text(commonName,
            style: TextStyle(
              fontFamily: 'Open_Sans',
              color: Color.fromRGBO(232, 225, 217, 1),
              fontSize: 14,
              height: 1,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
