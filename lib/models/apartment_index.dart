class ApartmentIndex {
  late final int accountStatus;
  late final bool emailNotConfirmed;
  late final bool validationFailed;
  late int website;
  Metadata? metadata;
  late final List<ApartmentObject> objects;
  late final Paging paging;
  late final int totaalAantalObjecten;

  ApartmentIndex({
    required this.accountStatus,
    required this.emailNotConfirmed,
    required this.validationFailed,
    required this.website,
    this.metadata,
    required this.objects,
    required this.paging,
    required this.totaalAantalObjecten,
  });

  ApartmentIndex.fromJson(Map<String, dynamic> json) {
    accountStatus = json['AccountStatus'];
    emailNotConfirmed = json['EmailNotConfirmed'];
    validationFailed = json['ValidationFailed'];
    website = json['Website'];
    metadata =
        json['Metadata'] != null ? Metadata.fromJson(json['Metadata']) : null;
    if (json['Objects'] != null) {
      objects = <ApartmentObject>[];
      json['Objects'].forEach((v) {
        objects.add(ApartmentObject.fromJson(v));
      });
    }
    paging = Paging.fromJson(json['Paging']);
    totaalAantalObjecten = json['TotaalAantalObjecten'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['AccountStatus'] = accountStatus;
    data['EmailNotConfirmed'] = emailNotConfirmed;
    data['ValidationFailed'] = validationFailed;
    data['Website'] = website;
    if (metadata != null) {
      data['Metadata'] = metadata!.toJson();
    }
    data['Objects'] = objects.map((v) => v.toJson()).toList();
    data['Paging'] = paging.toJson();
    data['TotaalAantalObjecten'] = totaalAantalObjecten;
    return data;
  }
}

class Metadata {
  String? objectType;
  String? omschrijving;
  String? titel;

  Metadata({this.objectType, this.omschrijving, this.titel});

  Metadata.fromJson(Map<String, dynamic> json) {
    objectType = json['ObjectType'];
    omschrijving = json['Omschrijving'];
    titel = json['Titel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ObjectType'] = objectType;
    data['Omschrijving'] = omschrijving;
    data['Titel'] = titel;
    return data;
  }
}

class ApartmentObject {
  String? aangebodenSindsTekst;
  String? aanmeldDatum;
  int? aantalKamers;
  String? aanvaarding;
  String? adres;
  int? afstand;
  String? bronCode;
  String? foto;
  String? fotoLarge;
  String? fotoLargest;
  String? fotoMedium;
  String? fotoSecure;
  int? globalId;
  String? groupByObjectType;
  bool? heeft360GradenFoto;
  bool? heeftBrochure;
  bool? heeftOpenhuizenTopper;
  bool? heeftOverbruggingsgrarantie;
  bool? heeftPlattegrond;
  bool? heeftTophuis;
  bool? heeftVeiling;
  bool? heeftVideo;
  String? id;
  bool? indProjectObjectType;
  bool? isSearchable;
  bool? isVerhuurd;
  bool? isVerkocht;
  bool? isVerkochtOfVerhuurd;
  int? koopprijs;
  String? koopprijsFormaat;
  int? koopprijsTot;
  int? makelaarId;
  String? makelaarNaam;
  String? mobileURL;
  int? oppervlakte;
  int? perceeloppervlakte;
  String? postcode;
  Prijs? prijs;
  List<String>? producten;
  Project? project;
  PromoLabel? promoLabel;
  String? publicatieDatum;
  int? publicatieStatus;
  int? typeProject;
  String? uRL;
  String? verkoopStatus;
  double? wGS84X;
  double? wGS84Y;
  int? woonOppervlakteTot;
  int? woonoppervlakte;
  String? woonplaats;
  List<int>? zoekType;

  ApartmentObject(
      {this.aangebodenSindsTekst,
      this.aanmeldDatum,
      this.aantalKamers,
      this.aanvaarding,
      this.adres,
      this.afstand,
      this.bronCode,
      this.foto,
      this.fotoLarge,
      this.fotoLargest,
      this.fotoMedium,
      this.fotoSecure,
      this.globalId,
      this.groupByObjectType,
      this.heeft360GradenFoto,
      this.heeftBrochure,
      this.heeftOpenhuizenTopper,
      this.heeftOverbruggingsgrarantie,
      this.heeftPlattegrond,
      this.heeftTophuis,
      this.heeftVeiling,
      this.heeftVideo,
      this.id,
      this.indProjectObjectType,
      this.isSearchable,
      this.isVerhuurd,
      this.isVerkocht,
      this.isVerkochtOfVerhuurd,
      this.koopprijs,
      this.koopprijsFormaat,
      this.koopprijsTot,
      this.makelaarId,
      this.makelaarNaam,
      this.mobileURL,
      this.oppervlakte,
      this.perceeloppervlakte,
      this.postcode,
      this.prijs,
      this.producten,
      this.project,
      this.promoLabel,
      this.publicatieDatum,
      this.publicatieStatus,
      this.typeProject,
      this.uRL,
      this.verkoopStatus,
      this.wGS84X,
      this.wGS84Y,
      this.woonOppervlakteTot,
      this.woonoppervlakte,
      this.woonplaats,
      this.zoekType});

  ApartmentObject.fromJson(Map<String, dynamic> json) {
    aangebodenSindsTekst = json['AangebodenSindsTekst'];
    aanmeldDatum = json['AanmeldDatum'];
    aantalKamers = json['AantalKamers'];
    aanvaarding = json['Aanvaarding'];
    adres = json['Adres'];
    afstand = json['Afstand'];
    bronCode = json['BronCode'];
    foto = json['Foto'];
    fotoLarge = json['FotoLarge'];
    fotoLargest = json['FotoLargest'];
    fotoMedium = json['FotoMedium'];
    fotoSecure = json['FotoSecure'];
    globalId = json['GlobalId'];
    groupByObjectType = json['GroupByObjectType'];
    heeft360GradenFoto = json['Heeft360GradenFoto'];
    heeftBrochure = json['HeeftBrochure'];
    heeftOpenhuizenTopper = json['HeeftOpenhuizenTopper'];
    heeftOverbruggingsgrarantie = json['HeeftOverbruggingsgrarantie'];
    heeftPlattegrond = json['HeeftPlattegrond'];
    heeftTophuis = json['HeeftTophuis'];
    heeftVeiling = json['HeeftVeiling'];
    heeftVideo = json['HeeftVideo'];
    id = json['Id'];
    indProjectObjectType = json['IndProjectObjectType'];
    isSearchable = json['IsSearchable'];
    isVerhuurd = json['IsVerhuurd'];
    isVerkocht = json['IsVerkocht'];
    isVerkochtOfVerhuurd = json['IsVerkochtOfVerhuurd'];
    koopprijs = json['Koopprijs'];
    koopprijsFormaat = json['KoopprijsFormaat'];
    koopprijsTot = json['KoopprijsTot'];
    makelaarId = json['MakelaarId'];
    makelaarNaam = json['MakelaarNaam'];
    mobileURL = json['MobileURL'];
    oppervlakte = json['Oppervlakte'];
    perceeloppervlakte = json['Perceeloppervlakte'];
    postcode = json['Postcode'];
    prijs = json['Prijs'] != null ? Prijs.fromJson(json['Prijs']) : null;
    producten = json['Producten'].cast<String>();
    project =
        json['Project'] != null ? Project.fromJson(json['Project']) : null;
    promoLabel = json['PromoLabel'] != null
        ? PromoLabel.fromJson(json['PromoLabel'])
        : null;
    publicatieDatum = json['PublicatieDatum'];
    publicatieStatus = json['PublicatieStatus'];
    typeProject = json['TypeProject'];
    uRL = json['URL'];
    verkoopStatus = json['VerkoopStatus'];
    wGS84X = json['WGS84_X'];
    wGS84Y = json['WGS84_Y'];
    woonOppervlakteTot = json['WoonOppervlakteTot'];
    woonoppervlakte = json['Woonoppervlakte'];
    woonplaats = json['Woonplaats'];
    zoekType = json['ZoekType'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['AangebodenSindsTekst'] = aangebodenSindsTekst;
    data['AanmeldDatum'] = aanmeldDatum;
    data['AantalKamers'] = aantalKamers;
    data['Aanvaarding'] = aanvaarding;
    data['Adres'] = adres;
    data['Afstand'] = afstand;
    data['BronCode'] = bronCode;
    data['Foto'] = foto;
    data['FotoLarge'] = fotoLarge;
    data['FotoLargest'] = fotoLargest;
    data['FotoMedium'] = fotoMedium;
    data['FotoSecure'] = fotoSecure;
    data['GlobalId'] = globalId;
    data['GroupByObjectType'] = groupByObjectType;
    data['Heeft360GradenFoto'] = heeft360GradenFoto;
    data['HeeftBrochure'] = heeftBrochure;
    data['HeeftOpenhuizenTopper'] = heeftOpenhuizenTopper;
    data['HeeftOverbruggingsgrarantie'] = heeftOverbruggingsgrarantie;
    data['HeeftPlattegrond'] = heeftPlattegrond;
    data['HeeftTophuis'] = heeftTophuis;
    data['HeeftVeiling'] = heeftVeiling;
    data['HeeftVideo'] = heeftVideo;
    data['Id'] = id;
    data['IndProjectObjectType'] = indProjectObjectType;
    data['IsSearchable'] = isSearchable;
    data['IsVerhuurd'] = isVerhuurd;
    data['IsVerkocht'] = isVerkocht;
    data['IsVerkochtOfVerhuurd'] = isVerkochtOfVerhuurd;
    data['Koopprijs'] = koopprijs;
    data['KoopprijsFormaat'] = koopprijsFormaat;
    data['KoopprijsTot'] = koopprijsTot;
    data['MakelaarId'] = makelaarId;
    data['MakelaarNaam'] = makelaarNaam;
    data['MobileURL'] = mobileURL;
    data['Oppervlakte'] = oppervlakte;
    data['Perceeloppervlakte'] = perceeloppervlakte;
    data['Postcode'] = postcode;
    if (prijs != null) {
      data['Prijs'] = prijs!.toJson();
    }
    data['Producten'] = producten;
    if (project != null) {
      data['Project'] = project!.toJson();
    }
    if (promoLabel != null) {
      data['PromoLabel'] = promoLabel!.toJson();
    }
    data['PublicatieDatum'] = publicatieDatum;
    data['PublicatieStatus'] = publicatieStatus;
    data['TypeProject'] = typeProject;
    data['URL'] = uRL;
    data['VerkoopStatus'] = verkoopStatus;
    data['WGS84_X'] = wGS84X;
    data['WGS84_Y'] = wGS84Y;
    data['WoonOppervlakteTot'] = woonOppervlakteTot;
    data['Woonoppervlakte'] = woonoppervlakte;
    data['Woonplaats'] = woonplaats;
    data['ZoekType'] = zoekType;
    return data;
  }
}

class Prijs {
  bool? geenExtraKosten;
  String? huurAbbreviation;
  String? huurprijsOpAanvraag;
  String? koopAbbreviation;
  int? koopprijs;
  String? koopprijsOpAanvraag;
  int? koopprijsTot;
  String? veilingText;

  Prijs(
      {this.geenExtraKosten,
      this.huurAbbreviation,
      this.huurprijsOpAanvraag,
      this.koopAbbreviation,
      this.koopprijs,
      this.koopprijsOpAanvraag,
      this.koopprijsTot,
      this.veilingText});

  Prijs.fromJson(Map<String, dynamic> json) {
    geenExtraKosten = json['GeenExtraKosten'];
    huurAbbreviation = json['HuurAbbreviation'];
    huurprijsOpAanvraag = json['HuurprijsOpAanvraag'];
    koopAbbreviation = json['KoopAbbreviation'];
    koopprijs = json['Koopprijs'];
    koopprijsOpAanvraag = json['KoopprijsOpAanvraag'];
    koopprijsTot = json['KoopprijsTot'];
    veilingText = json['VeilingText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['GeenExtraKosten'] = geenExtraKosten;
    data['HuurAbbreviation'] = huurAbbreviation;
    data['HuurprijsOpAanvraag'] = huurprijsOpAanvraag;
    data['KoopAbbreviation'] = koopAbbreviation;
    data['Koopprijs'] = koopprijs;
    data['KoopprijsOpAanvraag'] = koopprijsOpAanvraag;
    data['KoopprijsTot'] = koopprijsTot;
    data['VeilingText'] = veilingText;
    return data;
  }
}

class Project {
  String? hoofdFoto;
  bool? indIpix;
  bool? indPDF;
  bool? indPlattegrond;
  bool? indTop;
  bool? indVideo;
  String? internalId;
  int? type;

  Project({
    this.hoofdFoto,
    this.indIpix,
    this.indPDF,
    this.indPlattegrond,
    this.indTop,
    this.indVideo,
    this.internalId,
    this.type,
  });

  Project.fromJson(Map<String, dynamic> json) {
    hoofdFoto = json['HoofdFoto'];
    indIpix = json['IndIpix'];
    indPDF = json['IndPDF'];
    indPlattegrond = json['IndPlattegrond'];
    indTop = json['IndTop'];
    indVideo = json['IndVideo'];
    internalId = json['InternalId'];
    type = json['Type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['HoofdFoto'] = hoofdFoto;
    data['IndIpix'] = indIpix;
    data['IndPDF'] = indPDF;
    data['IndPlattegrond'] = indPlattegrond;
    data['IndTop'] = indTop;
    data['IndVideo'] = indVideo;
    data['InternalId'] = internalId;
    data['Type'] = type;
    return data;
  }
}

class PromoLabel {
  bool? hasPromotionLabel;
  List<String>? promotionPhotos;
  List<String>? promotionPhotosSecure;
  int? promotionType;
  int? ribbonColor;
  String? tagline;

  PromoLabel(
      {this.hasPromotionLabel,
      this.promotionPhotos,
      this.promotionPhotosSecure,
      this.promotionType,
      this.ribbonColor,
      this.tagline});

  PromoLabel.fromJson(Map<String, dynamic> json) {
    hasPromotionLabel = json['HasPromotionLabel'];
    promotionPhotos = json['PromotionPhotos']?.cast<String>();
    promotionPhotosSecure = json['PromotionPhotosSecure']?.cast<String>();
    promotionType = json['PromotionType'];
    ribbonColor = json['RibbonColor'];
    tagline = json['Tagline'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['HasPromotionLabel'] = hasPromotionLabel;
    data['PromotionPhotos'] = promotionPhotos;
    data['PromotionPhotosSecure'] = promotionPhotosSecure;
    data['PromotionType'] = promotionType;
    data['RibbonColor'] = ribbonColor;
    data['Tagline'] = tagline;
    return data;
  }
}

class Paging {
  late final int aantalPaginas;
  late final int huidigePagina;
  String? vorigeUrl;
  String? volgendeUrl;

  Paging({
    required this.aantalPaginas,
    required this.huidigePagina,
    this.vorigeUrl,
    this.volgendeUrl,
  });

  Paging.fromJson(Map<String, dynamic> json) {
    aantalPaginas = json['AantalPaginas'];
    huidigePagina = json['HuidigePagina'];
    vorigeUrl = json['VorigeUrl'];
    volgendeUrl = json['VolgendeUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['AantalPaginas'] = aantalPaginas;
    data['HuidigePagina'] = huidigePagina;
    data['VolgendeUrl'] = volgendeUrl;
    return data;
  }
}
