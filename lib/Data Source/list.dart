import 'package:flutter/material.dart';
import 'package:plant_master_demo/Data Source/random.dart';
import 'package:plant_master_demo/Data Source/page.dart';
import 'nature.dart';
import 'package:plant_master_demo/Data Source/SavedModel.dart';
import 'package:provider/provider.dart';
import 'package:plant_master_demo/Data Source/card.dart';




class PlantList extends StatefulWidget {
  const PlantList({Key? key}) : super(key: key);

  @override
  _PlantListState createState() => _PlantListState();
}

class _PlantListState extends State<PlantList> {
  List<Plant> plantList = [] ;
  Set<Plant> _savedPlant = {};

  Future<List<Plant>> generatePlants(int number) async {
    for (var i = 0; i < number ; i++) {
      Future<Plant> futurePlant = fetchRandomPlant();
      plantList.add(await futurePlant);
    }
    return plantList;
  }

  void _pushSaved() {
    // Navigator.of(context)
    //     .push(MaterialPageRoute(builder: (BuildContext context) {
    //   final Iterable<ListTile> tiles = _savedPlant.map((Plant p) {
    //     return ListTile(
    //         title: Text(p.scientificName),
    //         subtitle: Text(p.primaryCommonName),
    //     );
    //   });
    //   final List<Widget> divided =
    //   ListTile.divideTiles(context: context, tiles: tiles).toList();
    //
    //   return Scaffold(
    //       appBar: AppBar(title: const Text('Saved Plant'),
    //         backgroundColor: Colors.green,
    //       ),
    //
    //       body: ListView(children: divided));
    // }
    // ),
    // );
  }

  int testInt = 0;

@override
Widget build(BuildContext context) {
    return //Scaffold(
    // appBar: AppBar(title: const Text('Random Plant List'),
    // backgroundColor: Colors.green,
    // actions: <Widget>[IconButton(icon: Icon(Icons.list), onPressed: _pushSaved)]
    // ), body:
      FutureBuilder(
        future: generatePlants(10),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          print(snapshot.data);
          if(snapshot.data == null){
            return Center(child: Image.asset('assets/images/loader.gif', scale: 6,));
          } else {

            return Consumer<SavedModel>(
              builder: (context, saved, _) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  //final alreadySaved = _savedPlant.contains(snapshot.data[index]);
                  final alreadySaved = saved.savedList.contains(snapshot.data[index]);
                  return ListTile(
                      title: Text(snapshot.data[index].scientificName),
                      subtitle: Text(snapshot.data[index].primaryCommonName),
                      trailing: IconButton(
                        icon: Icon(alreadySaved ? Icons.favorite : Icons.favorite_border,
                            color: alreadySaved ? Colors.red : null),
                        onPressed: (){
                          setState(() {
                            if (alreadySaved) {
                              saved.remove(snapshot.data[index]);
                              // testInt -= 1;
                              // saved.test = testInt;
                            } else {
                              saved.add(snapshot.data[index]);
                              // testInt += 1;
                              // saved.test = testInt;
                            }
                          });
                        }
                        ,
                      ),
                      onTap: (){
                        // setState(() {
                        //   if (alreadySaved) {
                        //     _savedPlant.remove(snapshot.data[index]);
                        //   } else {
                        //     _savedPlant.add(snapshot.data[index]);
                        //   }
                        // });
                        // setState(() {
                        //     Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => PlantPage(saved.savedList[index])));
                        //     },
                        // );
                        setState( () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>
                                  PlantPage(plantList[index]))
                          );
                        });
                      },

              );
        },
      );
    //);
  },
  );
          }

});}}