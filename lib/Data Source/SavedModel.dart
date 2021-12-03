import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'nature.dart';



class SavedModel extends ChangeNotifier {
  ///test stuff vvvvv
  int _test = 0;
  int get test => _test;
  set test(int newVal) {
    _test = newVal;
    notifyListeners();
  } ///test stuff ^^^^^


  final List<Plant> _plants = [];

  /// An unmodifiable view of the items in the cart.
  UnmodifiableListView<Plant> get plants => UnmodifiableListView(_plants);

  /// The current total number of all saved plants
  int get totalSaved => _plants.length;
  get savedList => _plants;



  String getScientificName(int i){
    if (_plants.isEmpty)
      return 'No Saved Plants';
    if (i<=_plants.length)
      return _plants[i].scientificName;
    else
      return 'index out of bounds';
  }

  String getCommonName(int i){
    if (_plants.isEmpty)
      return 'No Saved Plants';
    if (i<=_plants.length)
      return _plants[i].primaryCommonName;
    else
      return 'index out of bounds';
  }

  /// Adds [plant] to cart
  void add(Plant plant) {
    _plants.add(plant);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  void remove(Plant plant) {
    _plants.remove(plant);
    notifyListeners();
  }

  /// Removes all items from the cart.
  void removeAll() {
    _plants.clear();
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }
}