class Plant {
  final int elementGlobalId;
  final String scientificName;
  final String primaryCommonName;


  Plant({
    required this.elementGlobalId,
    required this.scientificName,
    required this.primaryCommonName,

  });

  factory Plant.fromJson(Map<String, dynamic> json) {
    return Plant(
      elementGlobalId: json["elementGlobalId"],
      scientificName: json["scientificName"] ,
      primaryCommonName: json["primaryCommonName"] ,

    );
  }
}