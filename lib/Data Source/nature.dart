class Plant {
  Plant({
    required this.elementGlobalId,
    this.circumscripConfidence,
    required this.classificationLevel,
    required this.classificationStatus,
    this.iucn,
    required this.nameCategory,
    this.rankMethodUsed,
    required this.formattedScientificName,
    required this.scientificName,
    required this.scientificNameAuthor,
    required this.primaryCommonName,
    required this.relatedItisNames,
    required this.uniqueId,
    required this.elcode,
    required this.conceptRefFullCitation,
    required this.conceptName,
    this.taxonomicComments,
    required this.roundedGRank,
    this.conservationStatusFactorsEditionDate,
    this.conservationStatusFactorsEditionAuthors,
    required this.primaryCommonNameLanguage,
    required this.recordType,
    required this.elementNationals,
    required this.lastModified,
    required this.lastPublished,
    this.promotionalDescription,
    this.conceptLineageSummary,
    required this.nsxUrl,
    required this.grank,
    required this.grankChangeDate,
    required this.grankReviewDate,
    this.grankReasons,
    required this.rankInfo,
    this.animalCharacteristics,
    required this.occurrenceDelineations,
    required this.plantCharacteristics,
    required this.elementManagement,
    required this.occurrenceViabilities,
    required this.references,
    required this.otherCommonNames,
    required this.speciesGlobal,
    required this.speciesCharacteristics,
    required this.primaryReference,
    required this.predecessors,
  });
  late final int elementGlobalId;
  late final Null circumscripConfidence;
  late final ClassificationLevel classificationLevel;
  late final ClassificationStatus classificationStatus;
  late final Null iucn;
  late final NameCategory nameCategory;
  late final Null rankMethodUsed;
  late final String formattedScientificName;
  late final String scientificName;
  late final String scientificNameAuthor;
  late final String primaryCommonName;
  late final String relatedItisNames;
  late final String uniqueId;
  late final String elcode;
  late final String conceptRefFullCitation;
  late final String conceptName;
  late final Null taxonomicComments;
  late final String roundedGRank;
  late final Null conservationStatusFactorsEditionDate;
  late final Null conservationStatusFactorsEditionAuthors;
  late final String primaryCommonNameLanguage;
  late final String recordType;
  late final List<ElementNationals> elementNationals;
  late final String lastModified;
  late final String lastPublished;
  late final Null promotionalDescription;
  late final Null conceptLineageSummary;
  late final String nsxUrl;
  late final String grank;
  late final String grankChangeDate;
  late final String grankReviewDate;
  late final Null grankReasons;
  late final RankInfo rankInfo;
  late final Null animalCharacteristics;
  late final List<OccurrenceDelineations> occurrenceDelineations;
  late final PlantCharacteristics plantCharacteristics;
  late final ElementManagement elementManagement;
  late final List<OccurrenceViabilities> occurrenceViabilities;
  late final List<References> references;
  late final List<OtherCommonNames> otherCommonNames;
  late final SpeciesGlobal speciesGlobal;
  late final SpeciesCharacteristics speciesCharacteristics;
  late final PrimaryReference primaryReference;
  late final List<dynamic> predecessors;

  Plant.fromJson(Map<String, dynamic> json){
    elementGlobalId = json['elementGlobalId'];
    circumscripConfidence = null;
    classificationLevel = ClassificationLevel.fromJson(json['classificationLevel']);
    classificationStatus = ClassificationStatus.fromJson(json['classificationStatus']);
    iucn = null;
    nameCategory = NameCategory.fromJson(json['nameCategory']);
    rankMethodUsed = null;
    formattedScientificName = json['formattedScientificName'];
    scientificName = json['scientificName'];
    scientificNameAuthor = json['scientificNameAuthor'];
    primaryCommonName = json['primaryCommonName'];
    relatedItisNames = json['relatedItisNames'];
    uniqueId = json['uniqueId'];
    elcode = json['elcode'];
    conceptRefFullCitation = json['conceptRefFullCitation'];
    conceptName = json['conceptName'];
    taxonomicComments = null;
    roundedGRank = json['roundedGRank'];
    conservationStatusFactorsEditionDate = null;
    conservationStatusFactorsEditionAuthors = null;
    primaryCommonNameLanguage = json['primaryCommonNameLanguage'];
    recordType = json['recordType'];
    elementNationals = List.from(json['elementNationals']).map((e)=>ElementNationals.fromJson(e)).toList();
    lastModified = json['lastModified'];
    lastPublished = json['lastPublished'];
    promotionalDescription = null;
    conceptLineageSummary = null;
    nsxUrl = json['nsxUrl'];
    grank = json['grank'];
    grankChangeDate = json['grankChangeDate'];
    grankReviewDate = json['grankReviewDate'];
    grankReasons = null;
    rankInfo = RankInfo.fromJson(json['rankInfo']);
    animalCharacteristics = null;
    occurrenceDelineations = List.from(json['occurrenceDelineations']).map((e)=>OccurrenceDelineations.fromJson(e)).toList();
    plantCharacteristics = PlantCharacteristics.fromJson(json['plantCharacteristics']);
    elementManagement = ElementManagement.fromJson(json['elementManagement']);
    occurrenceViabilities = List.from(json['occurrenceViabilities']).map((e)=>OccurrenceViabilities.fromJson(e)).toList();
    references = List.from(json['references']).map((e)=>References.fromJson(e)).toList();
    otherCommonNames = List.from(json['otherCommonNames']).map((e)=>OtherCommonNames.fromJson(e)).toList();
    speciesGlobal = SpeciesGlobal.fromJson(json['speciesGlobal']);
    speciesCharacteristics = SpeciesCharacteristics.fromJson(json['speciesCharacteristics']);
    primaryReference = PrimaryReference.fromJson(json['primaryReference']);
    predecessors = List.castFrom<dynamic, dynamic>(json['predecessors']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['elementGlobalId'] = elementGlobalId;
    _data['circumscripConfidence'] = circumscripConfidence;
    _data['classificationLevel'] = classificationLevel.toJson();
    _data['classificationStatus'] = classificationStatus.toJson();
    _data['iucn'] = iucn;
    _data['nameCategory'] = nameCategory.toJson();
    _data['rankMethodUsed'] = rankMethodUsed;
    _data['formattedScientificName'] = formattedScientificName;
    _data['scientificName'] = scientificName;
    _data['scientificNameAuthor'] = scientificNameAuthor;
    _data['primaryCommonName'] = primaryCommonName;
    _data['relatedItisNames'] = relatedItisNames;
    _data['uniqueId'] = uniqueId;
    _data['elcode'] = elcode;
    _data['conceptRefFullCitation'] = conceptRefFullCitation;
    _data['conceptName'] = conceptName;
    _data['taxonomicComments'] = taxonomicComments;
    _data['roundedGRank'] = roundedGRank;
    _data['conservationStatusFactorsEditionDate'] = conservationStatusFactorsEditionDate;
    _data['conservationStatusFactorsEditionAuthors'] = conservationStatusFactorsEditionAuthors;
    _data['primaryCommonNameLanguage'] = primaryCommonNameLanguage;
    _data['recordType'] = recordType;
    _data['elementNationals'] = elementNationals.map((e)=>e.toJson()).toList();
    _data['lastModified'] = lastModified;
    _data['lastPublished'] = lastPublished;
    _data['promotionalDescription'] = promotionalDescription;
    _data['conceptLineageSummary'] = conceptLineageSummary;
    _data['nsxUrl'] = nsxUrl;
    _data['grank'] = grank;
    _data['grankChangeDate'] = grankChangeDate;
    _data['grankReviewDate'] = grankReviewDate;
    _data['grankReasons'] = grankReasons;
    _data['rankInfo'] = rankInfo.toJson();
    _data['animalCharacteristics'] = animalCharacteristics;
    _data['occurrenceDelineations'] = occurrenceDelineations.map((e)=>e.toJson()).toList();
    _data['plantCharacteristics'] = plantCharacteristics.toJson();
    _data['elementManagement'] = elementManagement.toJson();
    _data['occurrenceViabilities'] = occurrenceViabilities.map((e)=>e.toJson()).toList();
    _data['references'] = references.map((e)=>e.toJson()).toList();
    _data['otherCommonNames'] = otherCommonNames.map((e)=>e.toJson()).toList();
    _data['speciesGlobal'] = speciesGlobal.toJson();
    _data['speciesCharacteristics'] = speciesCharacteristics.toJson();
    _data['primaryReference'] = primaryReference.toJson();
    _data['predecessors'] = predecessors;
    return _data;
  }
}

class ClassificationLevel {
  ClassificationLevel({
    required this.id,
    required this.classificationLevelNameEn,
    required this.classificationLevelNameEs,
    required this.classificationLevelNameFr,
  });
  late final int id;
  late final String classificationLevelNameEn;
  late final String classificationLevelNameEs;
  late final String classificationLevelNameFr;

  ClassificationLevel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    classificationLevelNameEn = json['classificationLevelNameEn'];
    classificationLevelNameEs = json['classificationLevelNameEs'];
    classificationLevelNameFr = json['classificationLevelNameFr'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['classificationLevelNameEn'] = classificationLevelNameEn;
    _data['classificationLevelNameEs'] = classificationLevelNameEs;
    _data['classificationLevelNameFr'] = classificationLevelNameFr;
    return _data;
  }
}

class ClassificationStatus {
  ClassificationStatus({
    required this.id,
    required this.classificationStatusDescEn,
    required this.classificationStatusDescEs,
    required this.classificationStatusDescFr,
  });
  late final int id;
  late final String classificationStatusDescEn;
  late final String classificationStatusDescEs;
  late final String classificationStatusDescFr;

  ClassificationStatus.fromJson(Map<String, dynamic> json){
    id = json['id'];
    classificationStatusDescEn = json['classificationStatusDescEn'];
    classificationStatusDescEs = json['classificationStatusDescEs'];
    classificationStatusDescFr = json['classificationStatusDescFr'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['classificationStatusDescEn'] = classificationStatusDescEn;
    _data['classificationStatusDescEs'] = classificationStatusDescEs;
    _data['classificationStatusDescFr'] = classificationStatusDescFr;
    return _data;
  }
}

class NameCategory {
  NameCategory({
    required this.id,
    required this.nameCategoryDescEn,
    required this.nameCategoryDescEs,
    required this.nameCategoryDescFr,
    required this.nameTypeCd,
    required this.nameTypeDesc,
  });
  late final int id;
  late final String nameCategoryDescEn;
  late final String nameCategoryDescEs;
  late final String nameCategoryDescFr;
  late final String nameTypeCd;
  late final String nameTypeDesc;

  NameCategory.fromJson(Map<String, dynamic> json){
    id = json['id'];
    nameCategoryDescEn = json['nameCategoryDescEn'];
    nameCategoryDescEs = json['nameCategoryDescEs'];
    nameCategoryDescFr = json['nameCategoryDescFr'];
    nameTypeCd = json['nameTypeCd'];
    nameTypeDesc = json['nameTypeDesc'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['nameCategoryDescEn'] = nameCategoryDescEn;
    _data['nameCategoryDescEs'] = nameCategoryDescEs;
    _data['nameCategoryDescFr'] = nameCategoryDescFr;
    _data['nameTypeCd'] = nameTypeCd;
    _data['nameTypeDesc'] = nameTypeDesc;
    return _data;
  }
}

class ElementNationals {
  ElementNationals({
    required this.elementNationalId,
    this.classifConfidence,
    required this.nation,
    required this.roundedNRank,
    required this.elementSubnationals,
    required this.nrank,
    this.nrankReviewYear,
    required this.speciesNational,
  });
  late final int elementNationalId;
  late final Null classifConfidence;
  late final Nation nation;
  late final String roundedNRank;
  late final List<ElementSubnationals> elementSubnationals;
  late final String nrank;
  late final Null nrankReviewYear;
  late final SpeciesNational speciesNational;

  ElementNationals.fromJson(Map<String, dynamic> json){
    elementNationalId = json['elementNationalId'];
    classifConfidence = null;
    nation = Nation.fromJson(json['nation']);
    roundedNRank = json['roundedNRank'];
    elementSubnationals = List.from(json['elementSubnationals']).map((e)=>ElementSubnationals.fromJson(e)).toList();
    nrank = json['nrank'];
    nrankReviewYear = null;
    speciesNational = SpeciesNational.fromJson(json['speciesNational']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['elementNationalId'] = elementNationalId;
    _data['classifConfidence'] = classifConfidence;
    _data['nation'] = nation.toJson();
    _data['roundedNRank'] = roundedNRank;
    _data['elementSubnationals'] = elementSubnationals.map((e)=>e.toJson()).toList();
    _data['nrank'] = nrank;
    _data['nrankReviewYear'] = nrankReviewYear;
    _data['speciesNational'] = speciesNational.toJson();
    return _data;
  }
}

class Nation {
  Nation({
    required this.id,
    required this.nameEn,
    required this.nameEs,
    required this.nameFr,
    required this.isoCode,
    required this.region,
  });
  late final int id;
  late final String nameEn;
  late final String nameEs;
  late final String nameFr;
  late final String isoCode;
  late final String region;

  Nation.fromJson(Map<String, dynamic> json){
    id = json['id'];
    nameEn = json['nameEn'];
    nameEs = json['nameEs'];
    nameFr = json['nameFr'];
    isoCode = json['isoCode'];
    region = json['region'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['nameEn'] = nameEn;
    _data['nameEs'] = nameEs;
    _data['nameFr'] = nameFr;
    _data['isoCode'] = isoCode;
    _data['region'] = region;
    return _data;
  }
}

class ElementSubnationals {
  ElementSubnationals({
    required this.elementSubnationalId,
    required this.subnation,
    required this.roundedSRank,
    required this.srank,
    required this.speciesSubnational,
  });
  late final int elementSubnationalId;
  late final Subnation subnation;
  late final String roundedSRank;
  late final String srank;
  late final SpeciesSubnational speciesSubnational;

  ElementSubnationals.fromJson(Map<String, dynamic> json){
    elementSubnationalId = json['elementSubnationalId'];
    subnation = Subnation.fromJson(json['subnation']);
    roundedSRank = json['roundedSRank'];
    srank = json['srank'];
    speciesSubnational = SpeciesSubnational.fromJson(json['speciesSubnational']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['elementSubnationalId'] = elementSubnationalId;
    _data['subnation'] = subnation.toJson();
    _data['roundedSRank'] = roundedSRank;
    _data['srank'] = srank;
    _data['speciesSubnational'] = speciesSubnational.toJson();
    return _data;
  }
}

class Subnation {
  Subnation({
    required this.id,
    required this.nameEn,
    required this.nameEs,
    required this.nameFr,
    required this.subnationCode,
    required this.dnationId,
  });
  late final int id;
  late final String nameEn;
  late final String nameEs;
  late final String nameFr;
  late final String subnationCode;
  late final int dnationId;

  Subnation.fromJson(Map<String, dynamic> json){
    id = json['id'];
    nameEn = json['nameEn'];
    nameEs = json['nameEs'];
    nameFr = json['nameFr'];
    subnationCode = json['subnationCode'];
    dnationId = json['dnationId'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['nameEn'] = nameEn;
    _data['nameEs'] = nameEs;
    _data['nameFr'] = nameFr;
    _data['subnationCode'] = subnationCode;
    _data['dnationId'] = dnationId;
    return _data;
  }
}

class SpeciesSubnational {
  SpeciesSubnational({
    required this.elementSubnationalId,
    required this.hybrid,
    required this.exotic,
    required this.native,
  });
  late final int elementSubnationalId;
  late final bool hybrid;
  late final bool exotic;
  late final bool native;

  SpeciesSubnational.fromJson(Map<String, dynamic> json){
    elementSubnationalId = json['elementSubnationalId'];
    hybrid = json['hybrid'];
    exotic = json['exotic'];
    native = json['native'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['elementSubnationalId'] = elementSubnationalId;
    _data['hybrid'] = hybrid;
    _data['exotic'] = exotic;
    _data['native'] = native;
    return _data;
  }
}

class SpeciesNational {
  SpeciesNational({
    required this.elementNationalId,
    required this.exotic,
    required this.native,
  });
  late final int elementNationalId;
  late final bool exotic;
  late final bool native;

  SpeciesNational.fromJson(Map<String, dynamic> json){
    elementNationalId = json['elementNationalId'];
    exotic = json['exotic'];
    native = json['native'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['elementNationalId'] = elementNationalId;
    _data['exotic'] = exotic;
    _data['native'] = native;
    return _data;
  }
}

class RankInfo {
  RankInfo({
    required this.elementGlobalId,
    this.aooPercentGood,
    this.enviromentalSpecificity,
    this.intrinsicVulnerability,
    this.longTermTrend,
    this.numberEos,
    this.numberGoodEos,
    this.numberProtEos,
    this.popSize,
    this.rangeExtent,
    this.shortTermTrend,
    this.threatImpactAssigned,
    this.rangeExtentComments,
    this.areaOfOccupancy,
    this.areaOfOccupancyComments,
    this.numberEosComments,
    this.popSizeComments,
    this.viabilityComments,
    this.threatImpactComments,
    this.shortTermTrendComments,
    this.longTermTrendComments,
    this.inventoryNeeds,
    this.numberProtEosComments,
    this.protectionNeeds,
    this.otherConsiderations,
    this.intrinsicVulnerabilityComments,
    this.enviromentalSpecificityComments,
  });
  late final int elementGlobalId;
  late final Null aooPercentGood;
  late final Null enviromentalSpecificity;
  late final Null intrinsicVulnerability;
  late final Null longTermTrend;
  late final Null numberEos;
  late final Null numberGoodEos;
  late final Null numberProtEos;
  late final Null popSize;
  late final Null rangeExtent;
  late final Null shortTermTrend;
  late final Null threatImpactAssigned;
  late final Null rangeExtentComments;
  late final Null areaOfOccupancy;
  late final Null areaOfOccupancyComments;
  late final Null numberEosComments;
  late final Null popSizeComments;
  late final Null viabilityComments;
  late final Null threatImpactComments;
  late final Null shortTermTrendComments;
  late final Null longTermTrendComments;
  late final Null inventoryNeeds;
  late final Null numberProtEosComments;
  late final Null protectionNeeds;
  late final Null otherConsiderations;
  late final Null intrinsicVulnerabilityComments;
  late final Null enviromentalSpecificityComments;

  RankInfo.fromJson(Map<String, dynamic> json){
    elementGlobalId = json['elementGlobalId'];
    aooPercentGood = null;
    enviromentalSpecificity = null;
    intrinsicVulnerability = null;
    longTermTrend = null;
    numberEos = null;
    numberGoodEos = null;
    numberProtEos = null;
    popSize = null;
    rangeExtent = null;
    shortTermTrend = null;
    threatImpactAssigned = null;
    rangeExtentComments = null;
    areaOfOccupancy = null;
    areaOfOccupancyComments = null;
    numberEosComments = null;
    popSizeComments = null;
    viabilityComments = null;
    threatImpactComments = null;
    shortTermTrendComments = null;
    longTermTrendComments = null;
    inventoryNeeds = null;
    numberProtEosComments = null;
    protectionNeeds = null;
    otherConsiderations = null;
    intrinsicVulnerabilityComments = null;
    enviromentalSpecificityComments = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['elementGlobalId'] = elementGlobalId;
    _data['aooPercentGood'] = aooPercentGood;
    _data['enviromentalSpecificity'] = enviromentalSpecificity;
    _data['intrinsicVulnerability'] = intrinsicVulnerability;
    _data['longTermTrend'] = longTermTrend;
    _data['numberEos'] = numberEos;
    _data['numberGoodEos'] = numberGoodEos;
    _data['numberProtEos'] = numberProtEos;
    _data['popSize'] = popSize;
    _data['rangeExtent'] = rangeExtent;
    _data['shortTermTrend'] = shortTermTrend;
    _data['threatImpactAssigned'] = threatImpactAssigned;
    _data['rangeExtentComments'] = rangeExtentComments;
    _data['areaOfOccupancy'] = areaOfOccupancy;
    _data['areaOfOccupancyComments'] = areaOfOccupancyComments;
    _data['numberEosComments'] = numberEosComments;
    _data['popSizeComments'] = popSizeComments;
    _data['viabilityComments'] = viabilityComments;
    _data['threatImpactComments'] = threatImpactComments;
    _data['shortTermTrendComments'] = shortTermTrendComments;
    _data['longTermTrendComments'] = longTermTrendComments;
    _data['inventoryNeeds'] = inventoryNeeds;
    _data['numberProtEosComments'] = numberProtEosComments;
    _data['protectionNeeds'] = protectionNeeds;
    _data['otherConsiderations'] = otherConsiderations;
    _data['intrinsicVulnerabilityComments'] = intrinsicVulnerabilityComments;
    _data['enviromentalSpecificityComments'] = enviromentalSpecificityComments;
    return _data;
  }
}

class OccurrenceDelineations {
  OccurrenceDelineations({
    required this.eoSpecsDetailId,
    this.locationUseClass,
    this.eoSpecGroupName,
    this.subtypes,
    this.inferredExtentDistance,
    this.inferredExtentNotes,
    this.minimumEoCriteria,
    this.mappingGuidance,
    this.separationBarriers,
    this.separationDistanceUnsuitableHabitatat,
    this.separationDistanceSuitableHabitatat,
    required this.altSeparationProcedure,
    this.separationJustification,
    required this.versionDate,
    this.versionAuthor,
    this.versionNotes,
    required this.lastModified,
  });
  late final int eoSpecsDetailId;
  late final Null locationUseClass;
  late final Null eoSpecGroupName;
  late final Null subtypes;
  late final Null inferredExtentDistance;
  late final Null inferredExtentNotes;
  late final Null minimumEoCriteria;
  late final Null mappingGuidance;
  late final Null separationBarriers;
  late final Null separationDistanceUnsuitableHabitatat;
  late final Null separationDistanceSuitableHabitatat;
  late final String altSeparationProcedure;
  late final Null separationJustification;
  late final String versionDate;
  late final Null versionAuthor;
  late final Null versionNotes;
  late final String lastModified;

  OccurrenceDelineations.fromJson(Map<String, dynamic> json){
    eoSpecsDetailId = json['eoSpecsDetailId'];
    locationUseClass = null;
    eoSpecGroupName = null;
    subtypes = null;
    inferredExtentDistance = null;
    inferredExtentNotes = null;
    minimumEoCriteria = null;
    mappingGuidance = null;
    separationBarriers = null;
    separationDistanceUnsuitableHabitatat = null;
    separationDistanceSuitableHabitatat = null;
    altSeparationProcedure = json['altSeparationProcedure'];
    separationJustification = null;
    versionDate = json['versionDate'];
    versionAuthor = null;
    versionNotes = null;
    lastModified = json['lastModified'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['eoSpecsDetailId'] = eoSpecsDetailId;
    _data['locationUseClass'] = locationUseClass;
    _data['eoSpecGroupName'] = eoSpecGroupName;
    _data['subtypes'] = subtypes;
    _data['inferredExtentDistance'] = inferredExtentDistance;
    _data['inferredExtentNotes'] = inferredExtentNotes;
    _data['minimumEoCriteria'] = minimumEoCriteria;
    _data['mappingGuidance'] = mappingGuidance;
    _data['separationBarriers'] = separationBarriers;
    _data['separationDistanceUnsuitableHabitatat'] = separationDistanceUnsuitableHabitatat;
    _data['separationDistanceSuitableHabitatat'] = separationDistanceSuitableHabitatat;
    _data['altSeparationProcedure'] = altSeparationProcedure;
    _data['separationJustification'] = separationJustification;
    _data['versionDate'] = versionDate;
    _data['versionAuthor'] = versionAuthor;
    _data['versionNotes'] = versionNotes;
    _data['lastModified'] = lastModified;
    return _data;
  }
}

class PlantCharacteristics {
  PlantCharacteristics({
    required this.elementGlobalId,
    required this.genusEconomicValue,
    this.economicComments,
    required this.plantProductionMethods,
    required this.plantDurations,
    required this.plantEconomicUses,
    required this.plantCommercialImportances,
  });
  late final int elementGlobalId;
  late final bool genusEconomicValue;
  late final Null economicComments;
  late final List<dynamic> plantProductionMethods;
  late final List<dynamic> plantDurations;
  late final List<dynamic> plantEconomicUses;
  late final List<dynamic> plantCommercialImportances;

  PlantCharacteristics.fromJson(Map<String, dynamic> json){
    elementGlobalId = json['elementGlobalId'];
    genusEconomicValue = json['genusEconomicValue'];
    economicComments = null;
    plantProductionMethods = List.castFrom<dynamic, dynamic>(json['plantProductionMethods']);
    plantDurations = List.castFrom<dynamic, dynamic>(json['plantDurations']);
    plantEconomicUses = List.castFrom<dynamic, dynamic>(json['plantEconomicUses']);
    plantCommercialImportances = List.castFrom<dynamic, dynamic>(json['plantCommercialImportances']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['elementGlobalId'] = elementGlobalId;
    _data['genusEconomicValue'] = genusEconomicValue;
    _data['economicComments'] = economicComments;
    _data['plantProductionMethods'] = plantProductionMethods;
    _data['plantDurations'] = plantDurations;
    _data['plantEconomicUses'] = plantEconomicUses;
    _data['plantCommercialImportances'] = plantCommercialImportances;
    return _data;
  }
}

class ElementManagement {
  ElementManagement({
    required this.elementGlobalId,
    this.eoManagementGroupName,
    this.stewardshipOverview,
    this.impacts,
    this.restorationPotential,
    this.siteConservationPlansConsidered,
    this.managementMethods,
    this.monitoringMethods,
    this.managementProgramContacts,
    this.monitoringProgramContacts,
    this.managementResearchPrograms,
    this.managementResearchNeeds,
    this.biologicalResearchNeeds,
    this.additionalTopics,
  });
  late final int elementGlobalId;
  late final Null eoManagementGroupName;
  late final Null stewardshipOverview;
  late final Null impacts;
  late final Null restorationPotential;
  late final Null siteConservationPlansConsidered;
  late final Null managementMethods;
  late final Null monitoringMethods;
  late final Null managementProgramContacts;
  late final Null monitoringProgramContacts;
  late final Null managementResearchPrograms;
  late final Null managementResearchNeeds;
  late final Null biologicalResearchNeeds;
  late final Null additionalTopics;

  ElementManagement.fromJson(Map<String, dynamic> json){
    elementGlobalId = json['elementGlobalId'];
    eoManagementGroupName = null;
    stewardshipOverview = null;
    impacts = null;
    restorationPotential = null;
    siteConservationPlansConsidered = null;
    managementMethods = null;
    monitoringMethods = null;
    managementProgramContacts = null;
    monitoringProgramContacts = null;
    managementResearchPrograms = null;
    managementResearchNeeds = null;
    biologicalResearchNeeds = null;
    additionalTopics = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['elementGlobalId'] = elementGlobalId;
    _data['eoManagementGroupName'] = eoManagementGroupName;
    _data['stewardshipOverview'] = stewardshipOverview;
    _data['impacts'] = impacts;
    _data['restorationPotential'] = restorationPotential;
    _data['siteConservationPlansConsidered'] = siteConservationPlansConsidered;
    _data['managementMethods'] = managementMethods;
    _data['monitoringMethods'] = monitoringMethods;
    _data['managementProgramContacts'] = managementProgramContacts;
    _data['monitoringProgramContacts'] = monitoringProgramContacts;
    _data['managementResearchPrograms'] = managementResearchPrograms;
    _data['managementResearchNeeds'] = managementResearchNeeds;
    _data['biologicalResearchNeeds'] = biologicalResearchNeeds;
    _data['additionalTopics'] = additionalTopics;
    return _data;
  }
}

class OccurrenceViabilities {
  OccurrenceViabilities({
    required this.eoRankSpecsDetailId,
    this.eoRankSpecsGroupName,
    this.locationUseClass,
    this.excellentViability,
    this.goodViability,
    this.fairViability,
    this.poorViability,
    required this.viabilityJustification,
    this.versionDate,
    this.versionAuthor,
    this.versionNotes,
    required this.lastModified,
  });
  late final int eoRankSpecsDetailId;
  late final Null eoRankSpecsGroupName;
  late final Null locationUseClass;
  late final Null excellentViability;
  late final Null goodViability;
  late final Null fairViability;
  late final Null poorViability;
  late final String viabilityJustification;
  late final Null versionDate;
  late final Null versionAuthor;
  late final Null versionNotes;
  late final String lastModified;

  OccurrenceViabilities.fromJson(Map<String, dynamic> json){
    eoRankSpecsDetailId = json['eoRankSpecsDetailId'];
    eoRankSpecsGroupName = null;
    locationUseClass = null;
    excellentViability = null;
    goodViability = null;
    fairViability = null;
    poorViability = null;
    viabilityJustification = json['viabilityJustification'];
    versionDate = null;
    versionAuthor = null;
    versionNotes = null;
    lastModified = json['lastModified'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['eoRankSpecsDetailId'] = eoRankSpecsDetailId;
    _data['eoRankSpecsGroupName'] = eoRankSpecsGroupName;
    _data['locationUseClass'] = locationUseClass;
    _data['excellentViability'] = excellentViability;
    _data['goodViability'] = goodViability;
    _data['fairViability'] = fairViability;
    _data['poorViability'] = poorViability;
    _data['viabilityJustification'] = viabilityJustification;
    _data['versionDate'] = versionDate;
    _data['versionAuthor'] = versionAuthor;
    _data['versionNotes'] = versionNotes;
    _data['lastModified'] = lastModified;
    return _data;
  }
}

class References {
  References({
    required this.id,
    required this.citation,
    required this.shortCitationAuthor,
    required this.shortCitationYear,
    required this.referenceCode,
    required this.lastModified,
  });
  late final int id;
  late final String citation;
  late final String shortCitationAuthor;
  late final int shortCitationYear;
  late final String referenceCode;
  late final String lastModified;

  References.fromJson(Map<String, dynamic> json){
    id = json['id'];
    citation = json['citation'];
    shortCitationAuthor = json['shortCitationAuthor'];
    shortCitationYear = json['shortCitationYear'];
    referenceCode = json['referenceCode'];
    lastModified = json['lastModified'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['citation'] = citation;
    _data['shortCitationAuthor'] = shortCitationAuthor;
    _data['shortCitationYear'] = shortCitationYear;
    _data['referenceCode'] = referenceCode;
    _data['lastModified'] = lastModified;
    return _data;
  }
}

class OtherCommonNames {
  OtherCommonNames({
    required this.id,
    required this.name,
    required this.language,
  });
  late final int id;
  late final String name;
  late final String language;

  OtherCommonNames.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    language = json['language'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['language'] = language;
    return _data;
  }
}

class SpeciesGlobal {
  SpeciesGlobal({
    required this.elementGlobalId,
    this.cites,
    this.cosewic,
    this.fwsRegion,
    this.genusSize,
    this.jurisEndem,
    this.nomenclaturallyEst,
    this.usesa,
    required this.informalTaxonomy,
    this.parentSpecies,
    required this.infraspecies,
    required this.kingdom,
    required this.phylum,
    required this.taxclass,
    required this.taxorder,
    required this.family,
    required this.genus,
    this.americanFisheriesStatus,
    this.americanFisheriesStatusDate,
    this.saraStatus,
    this.saraStatusDate,
    this.cosewicDate,
    this.interpretedCosewic,
    this.cosewicComments,
    this.usesaDate,
    this.interpretedUsesa,
    this.usesaComments,
    required this.completeDistribution,
    required this.synonyms,
    required this.infraspeciesList,
    this.ebarId,
    this.ebarCanadianScope,
    this.ebarGlobalScope,
  });
  late final int elementGlobalId;
  late final Null cites;
  late final Null cosewic;
  late final Null fwsRegion;
  late final Null genusSize;
  late final Null jurisEndem;
  late final Null nomenclaturallyEst;
  late final Null usesa;
  late final InformalTaxonomy informalTaxonomy;
  late final Null parentSpecies;
  late final bool infraspecies;
  late final String kingdom;
  late final String phylum;
  late final String taxclass;
  late final String taxorder;
  late final String family;
  late final String genus;
  late final Null americanFisheriesStatus;
  late final Null americanFisheriesStatusDate;
  late final Null saraStatus;
  late final Null saraStatusDate;
  late final Null cosewicDate;
  late final Null interpretedCosewic;
  late final Null cosewicComments;
  late final Null usesaDate;
  late final Null interpretedUsesa;
  late final Null usesaComments;
  late final bool completeDistribution;
  late final List<dynamic> synonyms;
  late final List<InfraspeciesList> infraspeciesList;
  late final Null ebarId;
  late final Null ebarCanadianScope;
  late final Null ebarGlobalScope;

  SpeciesGlobal.fromJson(Map<String, dynamic> json){
    elementGlobalId = json['elementGlobalId'];
    cites = null;
    cosewic = null;
    fwsRegion = null;
    genusSize = null;
    jurisEndem = null;
    nomenclaturallyEst = null;
    usesa = null;
    informalTaxonomy = InformalTaxonomy.fromJson(json['informalTaxonomy']);
    parentSpecies = null;
    infraspecies = json['infraspecies'];
    kingdom = json['kingdom'];
    phylum = json['phylum'];
    taxclass = json['taxclass'];
    taxorder = json['taxorder'];
    family = json['family'];
    genus = json['genus'];
    americanFisheriesStatus = null;
    americanFisheriesStatusDate = null;
    saraStatus = null;
    saraStatusDate = null;
    cosewicDate = null;
    interpretedCosewic = null;
    cosewicComments = null;
    usesaDate = null;
    interpretedUsesa = null;
    usesaComments = null;
    completeDistribution = json['completeDistribution'];
    synonyms = List.castFrom<dynamic, dynamic>(json['synonyms']);
    infraspeciesList = List.from(json['infraspeciesList']).map((e)=>InfraspeciesList.fromJson(e)).toList();
    ebarId = null;
    ebarCanadianScope = null;
    ebarGlobalScope = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['elementGlobalId'] = elementGlobalId;
    _data['cites'] = cites;
    _data['cosewic'] = cosewic;
    _data['fwsRegion'] = fwsRegion;
    _data['genusSize'] = genusSize;
    _data['jurisEndem'] = jurisEndem;
    _data['nomenclaturallyEst'] = nomenclaturallyEst;
    _data['usesa'] = usesa;
    _data['informalTaxonomy'] = informalTaxonomy.toJson();
    _data['parentSpecies'] = parentSpecies;
    _data['infraspecies'] = infraspecies;
    _data['kingdom'] = kingdom;
    _data['phylum'] = phylum;
    _data['taxclass'] = taxclass;
    _data['taxorder'] = taxorder;
    _data['family'] = family;
    _data['genus'] = genus;
    _data['americanFisheriesStatus'] = americanFisheriesStatus;
    _data['americanFisheriesStatusDate'] = americanFisheriesStatusDate;
    _data['saraStatus'] = saraStatus;
    _data['saraStatusDate'] = saraStatusDate;
    _data['cosewicDate'] = cosewicDate;
    _data['interpretedCosewic'] = interpretedCosewic;
    _data['cosewicComments'] = cosewicComments;
    _data['usesaDate'] = usesaDate;
    _data['interpretedUsesa'] = interpretedUsesa;
    _data['usesaComments'] = usesaComments;
    _data['completeDistribution'] = completeDistribution;
    _data['synonyms'] = synonyms;
    _data['infraspeciesList'] = infraspeciesList.map((e)=>e.toJson()).toList();
    _data['ebarId'] = ebarId;
    _data['ebarCanadianScope'] = ebarCanadianScope;
    _data['ebarGlobalScope'] = ebarGlobalScope;
    return _data;
  }
}

class InformalTaxonomy {
  InformalTaxonomy({
    required this.informalTaxonomyId,
    required this.level1,
    required this.level2,
    required this.level3,
    required this.level,
    required this.hasChildren,
    required this.parentId,
    required this.distributionStatus,
    required this.displayOrder,
  });
  late final int informalTaxonomyId;
  late final String level1;
  late final String level2;
  late final String level3;
  late final int level;
  late final bool hasChildren;
  late final int parentId;
  late final String distributionStatus;
  late final int displayOrder;

  InformalTaxonomy.fromJson(Map<String, dynamic> json){
    informalTaxonomyId = json['informalTaxonomyId'];
    level1 = json['level1'];
    level2 = json['level2'];
    level3 = json['level3'];
    level = json['level'];
    hasChildren = json['hasChildren'];
    parentId = json['parentId'];
    distributionStatus = json['distributionStatus'];
    displayOrder = json['displayOrder'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['informalTaxonomyId'] = informalTaxonomyId;
    _data['level1'] = level1;
    _data['level2'] = level2;
    _data['level3'] = level3;
    _data['level'] = level;
    _data['hasChildren'] = hasChildren;
    _data['parentId'] = parentId;
    _data['distributionStatus'] = distributionStatus;
    _data['displayOrder'] = displayOrder;
    return _data;
  }
}

class InfraspeciesList {
  InfraspeciesList({
    required this.infraspeciesId,
    required this.uniqueId,
    required this.formattedScientificName,
    required this.scientificName,
    required this.primaryCommonName,
    required this.nsxUrl,
  });
  late final int infraspeciesId;
  late final String uniqueId;
  late final String formattedScientificName;
  late final String scientificName;
  late final String primaryCommonName;
  late final String nsxUrl;

  InfraspeciesList.fromJson(Map<String, dynamic> json){
    infraspeciesId = json['infraspeciesId'];
    uniqueId = json['uniqueId'];
    formattedScientificName = json['formattedScientificName'];
    scientificName = json['scientificName'];
    primaryCommonName = json['primaryCommonName'];
    nsxUrl = json['nsxUrl'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['infraspeciesId'] = infraspeciesId;
    _data['uniqueId'] = uniqueId;
    _data['formattedScientificName'] = formattedScientificName;
    _data['scientificName'] = scientificName;
    _data['primaryCommonName'] = primaryCommonName;
    _data['nsxUrl'] = nsxUrl;
    return _data;
  }
}

class SpeciesCharacteristics {
  SpeciesCharacteristics({
    required this.elementGlobalId,
    this.reproductionComments,
    this.ecologyComments,
    this.habitatComments,
    this.generalDescription,
    this.diagnosticCharacteristics,
    required this.speciesMarineHabitats,
    required this.speciesTerrestrialHabitats,
    required this.speciesRiverineHabitats,
    required this.speciesPalustrineHabitats,
    required this.speciesLacustrineHabitats,
    required this.speciesSubterraneanHabitats,
    required this.speciesEstuarineHabitats,
  });
  late final int elementGlobalId;
  late final Null reproductionComments;
  late final Null ecologyComments;
  late final Null habitatComments;
  late final Null generalDescription;
  late final Null diagnosticCharacteristics;
  late final List<dynamic> speciesMarineHabitats;
  late final List<dynamic> speciesTerrestrialHabitats;
  late final List<dynamic> speciesRiverineHabitats;
  late final List<dynamic> speciesPalustrineHabitats;
  late final List<dynamic> speciesLacustrineHabitats;
  late final List<dynamic> speciesSubterraneanHabitats;
  late final List<dynamic> speciesEstuarineHabitats;

  SpeciesCharacteristics.fromJson(Map<String, dynamic> json){
    elementGlobalId = json['elementGlobalId'];
    reproductionComments = null;
    ecologyComments = null;
    habitatComments = null;
    generalDescription = null;
    diagnosticCharacteristics = null;
    speciesMarineHabitats = List.castFrom<dynamic, dynamic>(json['speciesMarineHabitats']);
    speciesTerrestrialHabitats = List.castFrom<dynamic, dynamic>(json['speciesTerrestrialHabitats']);
    speciesRiverineHabitats = List.castFrom<dynamic, dynamic>(json['speciesRiverineHabitats']);
    speciesPalustrineHabitats = List.castFrom<dynamic, dynamic>(json['speciesPalustrineHabitats']);
    speciesLacustrineHabitats = List.castFrom<dynamic, dynamic>(json['speciesLacustrineHabitats']);
    speciesSubterraneanHabitats = List.castFrom<dynamic, dynamic>(json['speciesSubterraneanHabitats']);
    speciesEstuarineHabitats = List.castFrom<dynamic, dynamic>(json['speciesEstuarineHabitats']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['elementGlobalId'] = elementGlobalId;
    _data['reproductionComments'] = reproductionComments;
    _data['ecologyComments'] = ecologyComments;
    _data['habitatComments'] = habitatComments;
    _data['generalDescription'] = generalDescription;
    _data['diagnosticCharacteristics'] = diagnosticCharacteristics;
    _data['speciesMarineHabitats'] = speciesMarineHabitats;
    _data['speciesTerrestrialHabitats'] = speciesTerrestrialHabitats;
    _data['speciesRiverineHabitats'] = speciesRiverineHabitats;
    _data['speciesPalustrineHabitats'] = speciesPalustrineHabitats;
    _data['speciesLacustrineHabitats'] = speciesLacustrineHabitats;
    _data['speciesSubterraneanHabitats'] = speciesSubterraneanHabitats;
    _data['speciesEstuarineHabitats'] = speciesEstuarineHabitats;
    return _data;
  }
}

class PrimaryReference {
  PrimaryReference({
    required this.id,
    required this.citation,
    required this.shortCitationAuthor,
    required this.shortCitationYear,
    required this.referenceCode,
    required this.lastModified,
  });
  late final int id;
  late final String citation;
  late final String shortCitationAuthor;
  late final int shortCitationYear;
  late final String referenceCode;
  late final String lastModified;

  PrimaryReference.fromJson(Map<String, dynamic> json){
    id = json['id'];
    citation = json['citation'];
    shortCitationAuthor = json['shortCitationAuthor'];
    shortCitationYear = json['shortCitationYear'];
    referenceCode = json['referenceCode'];
    lastModified = json['lastModified'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['citation'] = citation;
    _data['shortCitationAuthor'] = shortCitationAuthor;
    _data['shortCitationYear'] = shortCitationYear;
    _data['referenceCode'] = referenceCode;
    _data['lastModified'] = lastModified;
    return _data;
  }
}