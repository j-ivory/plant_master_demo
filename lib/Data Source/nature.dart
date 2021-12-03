class Plant {
  final int elementGlobalId;
  final String scientificName;
  final String primaryCommonName;
  final String taxonomicComments;


  Plant({
    required this.elementGlobalId,
    required this.scientificName,
    required this.primaryCommonName,
    required this.taxonomicComments,

  });

  factory Plant.fromJson(Map<String, dynamic> json) {
    return Plant(
      elementGlobalId: json["elementGlobalId"],
      scientificName: json["scientificName"] ?? "No Data",
      primaryCommonName: json["primaryCommonName"] ?? "No Data" ,
      taxonomicComments: json["taxonomicComments"] ?? "No Data",

    );
  }
}