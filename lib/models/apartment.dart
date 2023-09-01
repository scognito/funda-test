class Apartment {
  String? aangebodenSinds;
  String? aangebodenSindsTekst;
  int? aantalBadkamers;
  int? aantalKamers;
  String? aantalWoonlagen;
  String? aanvaarding;
  String? adres;
  List<BezichtingDagdelen>? bezichtingDagdelen;
  String? bouwjaar;
  String? bouwvorm;
  String? bronCode;
  String? cv;
  DetailInfo? detailInfo;
  Energielabel? energielabel;
  String? garage;
  String? garageVoorzieningen;
  String? gewijzigdDatum;
  String? hoofdFoto;
  String? hoofdFotoSecure;
  String? hoofdTuinType;
  int? id;
  bool? indBasisPlaatsing;
  bool? indFotos;
  bool? indIpix;
  bool? indOpenhuizenTopper;
  bool? indPDF;
  bool? indPlattegrond;
  bool? indTop;
  bool? indVeilingProduct;
  bool? indVideo;
  int? inhoud;
  String? internalId;
  bool? isIngetrokken;
  bool? isVerhuurd;
  bool? isVerkocht;
  String? isolatie;
  List<Kenmerken>? kenmerken;
  KenmerkenKort? kenmerkenKort;
  String? ligging;
  String? mLIUrl;
  String? makelaar;
  int? makelaarId;
  String? makelaarTelefoon;
  List<Media>? media;
  List<String>? mediaFoto;
  String? mobileURL;
  String? objectType;
  String? objectTypeMetVoorvoegsel;
  int? perceelOppervlakte;
  String? permanenteBewoning;
  String? plaats;
  String? postcode;
  Prijs? prijs;
  String? prijsGeformatteerd;
  String? publicatieDatum;
  int? publicatieStatus;
  String? scrambledId;
  int? serviceKosten;
  int? soortAanbod;
  String? soortDak;
  String? soortGarage;
  String? soortParkeergelegenheid;
  int? soortPlaatsing;
  String? soortWoning;
  List<Titels>? titels;
  bool? toonBezichtigingMaken;
  bool? toonBrochureAanvraag;
  bool? toonMakelaarWoningaanbod;
  bool? toonReageren;
  String? tuinLigging;
  int? typeProject;
  String? uRL;
  String? verkoopStatus;
  String? video;
  String? verwarming;
  String? volledigeOmschrijving;
  String? voorzieningen;
  double? wGS84X;
  double? wGS84Y;
  String? warmWater;
  int? woonOppervlakte;
  int? koopPrijs;
  String? koopPrijsLang;
  int? koopprijs;
  String? koopprijsFormaat;
  String? shortURL;
  String? tuin;

  Apartment({
    this.aangebodenSinds,
    this.aangebodenSindsTekst,
    this.aantalBadkamers,
    this.aantalKamers,
    this.aantalWoonlagen,
    this.aanvaarding,
    this.adres,
    this.bezichtingDagdelen,
    this.bouwjaar,
    this.bouwvorm,
    this.bronCode,
    this.cv,
    this.detailInfo,
    this.energielabel,
    this.garage,
    this.garageVoorzieningen,
    this.gewijzigdDatum,
    this.hoofdFoto,
    this.hoofdFotoSecure,
    this.hoofdTuinType,
    this.id,
    this.indBasisPlaatsing,
    this.indFotos,
    this.indIpix,
    this.indOpenhuizenTopper,
    this.indPDF,
    this.indPlattegrond,
    this.indTop,
    this.indVeilingProduct,
    this.indVideo,
    this.inhoud,
    this.internalId,
    this.isIngetrokken,
    this.isVerhuurd,
    this.isVerkocht,
    this.isolatie,
    this.kenmerken,
    this.kenmerkenKort,
    this.ligging,
    this.mLIUrl,
    this.makelaar,
    this.makelaarId,
    this.makelaarTelefoon,
    this.media,
    this.mediaFoto,
    this.mobileURL,
    this.objectType,
    this.objectTypeMetVoorvoegsel,
    this.perceelOppervlakte,
    this.permanenteBewoning,
    this.plaats,
    this.postcode,
    this.prijs,
    this.prijsGeformatteerd,
    this.publicatieDatum,
    this.publicatieStatus,
    this.scrambledId,
    this.serviceKosten,
    this.soortAanbod,
    this.soortDak,
    this.soortGarage,
    this.soortParkeergelegenheid,
    this.soortPlaatsing,
    this.soortWoning,
    this.titels,
    this.toonBezichtigingMaken,
    this.toonBrochureAanvraag,
    this.toonMakelaarWoningaanbod,
    this.toonReageren,
    this.tuinLigging,
    this.typeProject,
    this.uRL,
    this.verkoopStatus,
    this.verwarming,
    this.video,
    this.volledigeOmschrijving,
    this.voorzieningen,
    this.wGS84X,
    this.wGS84Y,
    this.warmWater,
    this.woonOppervlakte,
    this.koopPrijs,
    this.koopPrijsLang,
    this.koopprijs,
    this.koopprijsFormaat,
    this.shortURL,
    this.tuin,
  });

  Apartment.fromJson(Map<String, dynamic> json) {
    aangebodenSinds = json['AangebodenSinds'];
    aangebodenSindsTekst = json['AangebodenSindsTekst'];
    aantalBadkamers = json['AantalBadkamers'];
    aantalKamers = json['AantalKamers'];
    aantalWoonlagen = json['AantalWoonlagen'];
    aanvaarding = json['Aanvaarding'];
    adres = json['Adres'];
    if (json['BezichtingDagdelen'] != null) {
      bezichtingDagdelen = <BezichtingDagdelen>[];
      json['BezichtingDagdelen'].forEach((v) {
        bezichtingDagdelen!.add(BezichtingDagdelen.fromJson(v));
      });
    }
    bouwjaar = json['Bouwjaar'];
    bouwvorm = json['Bouwvorm'];
    bronCode = json['BronCode'];
    cv = json['Cv'];
    detailInfo = json['DetailInfo'] != null
        ? DetailInfo.fromJson(json['DetailInfo'])
        : null;
    energielabel = json['Energielabel'] != null
        ? Energielabel.fromJson(json['Energielabel'])
        : null;
    garage = json['Garage'];
    garageVoorzieningen = json['GarageVoorzieningen'];
    gewijzigdDatum = json['GewijzigdDatum'];
    hoofdFoto = json['HoofdFoto'];
    hoofdFotoSecure = json['HoofdFotoSecure'];
    hoofdTuinType = json['HoofdTuinType'];
    id = json['Id'];
    indBasisPlaatsing = json['IndBasisPlaatsing'];
    indFotos = json['IndFotos'];
    indIpix = json['IndIpix'];
    indOpenhuizenTopper = json['IndOpenhuizenTopper'];
    indPDF = json['IndPDF'];
    indPlattegrond = json['IndPlattegrond'];
    indTop = json['IndTop'];
    indVeilingProduct = json['IndVeilingProduct'];
    indVideo = json['IndVideo'];
    inhoud = json['Inhoud'];
    internalId = json['InternalId'];
    isIngetrokken = json['IsIngetrokken'];
    isVerhuurd = json['IsVerhuurd'];
    isVerkocht = json['IsVerkocht'];
    isolatie = json['Isolatie'];
    if (json['Kenmerken'] != null) {
      kenmerken = <Kenmerken>[];
      json['Kenmerken'].forEach((v) {
        kenmerken!.add(Kenmerken.fromJson(v));
      });
    }
    kenmerkenKort = json['KenmerkenKort'] != null
        ? KenmerkenKort.fromJson(json['KenmerkenKort'])
        : null;
    ligging = json['Ligging'];
    mLIUrl = json['MLIUrl'];
    makelaar = json['Makelaar'];
    makelaarId = json['MakelaarId'];
    makelaarTelefoon = json['MakelaarTelefoon'];
    if (json['Media'] != null) {
      media = <Media>[];
      json['Media'].forEach((v) {
        media!.add(Media.fromJson(v));
      });
    }
    mediaFoto = json['Media-Foto'].cast<String>();
    mobileURL = json['MobileURL'];
    objectType = json['ObjectType'];
    objectTypeMetVoorvoegsel = json['ObjectTypeMetVoorvoegsel'];
    perceelOppervlakte = json['PerceelOppervlakte'];
    permanenteBewoning = json['PermanenteBewoning'];
    plaats = json['Plaats'];
    postcode = json['Postcode'];
    prijs = json['Prijs'] != null ? Prijs.fromJson(json['Prijs']) : null;
    prijsGeformatteerd = json['PrijsGeformatteerd'];
    publicatieDatum = json['PublicatieDatum'];
    publicatieStatus = json['PublicatieStatus'];
    scrambledId = json['ScrambledId'];
    serviceKosten = json['ServiceKosten'];
    soortAanbod = json['SoortAanbod'];
    soortDak = json['SoortDak'];
    soortGarage = json['SoortGarage'];
    soortParkeergelegenheid = json['SoortParkeergelegenheid'];
    soortPlaatsing = json['SoortPlaatsing'];
    soortWoning = json['SoortWoning'];
    if (json['Titels'] != null) {
      titels = <Titels>[];
      json['Titels'].forEach((v) {
        titels!.add(Titels.fromJson(v));
      });
    }
    toonBezichtigingMaken = json['ToonBezichtigingMaken'];
    toonBrochureAanvraag = json['ToonBrochureAanvraag'];
    toonMakelaarWoningaanbod = json['ToonMakelaarWoningaanbod'];
    toonReageren = json['ToonReageren'];
    tuinLigging = json['TuinLigging'];
    typeProject = json['TypeProject'];
    uRL = json['URL'];
    verkoopStatus = json['VerkoopStatus'];
    verwarming = json['Verwarming'];
    video = json['Video'];
    volledigeOmschrijving = json['VolledigeOmschrijving'];
    voorzieningen = json['Voorzieningen'];
    wGS84X = json['WGS84_X'];
    wGS84Y = json['WGS84_Y'];
    warmWater = json['WarmWater'];
    woonOppervlakte = json['WoonOppervlakte'];
    koopPrijs = json['KoopPrijs'];
    koopPrijsLang = json['KoopPrijsLang'];
    koopprijs = json['Koopprijs'];
    koopprijsFormaat = json['KoopprijsFormaat'];
    shortURL = json['ShortURL'];
    tuin = json['Tuin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['AangebodenSinds'] = aangebodenSinds;
    data['AangebodenSindsTekst'] = aangebodenSindsTekst;
    data['AantalBadkamers'] = aantalBadkamers;
    data['AantalKamers'] = aantalKamers;
    data['AantalWoonlagen'] = aantalWoonlagen;
    data['Aanvaarding'] = aanvaarding;
    data['Adres'] = adres;
    if (bezichtingDagdelen != null) {
      data['BezichtingDagdelen'] =
          bezichtingDagdelen!.map((v) => v.toJson()).toList();
    }
    data['Bouwjaar'] = bouwjaar;
    data['Bouwvorm'] = bouwvorm;
    data['BronCode'] = bronCode;
    data['Cv'] = cv;
    if (detailInfo != null) {
      data['DetailInfo'] = detailInfo!.toJson();
    }
    if (energielabel != null) {
      data['Energielabel'] = energielabel!.toJson();
    }
    data['Garage'] = garage;
    data['GarageVoorzieningen'] = garageVoorzieningen;
    data['GewijzigdDatum'] = gewijzigdDatum;
    data['HoofdFoto'] = hoofdFoto;
    data['HoofdFotoSecure'] = hoofdFotoSecure;
    data['HoofdTuinType'] = hoofdTuinType;
    data['Id'] = id;
    data['IndBasisPlaatsing'] = indBasisPlaatsing;
    data['IndFotos'] = indFotos;
    data['IndIpix'] = indIpix;
    data['IndOpenhuizenTopper'] = indOpenhuizenTopper;
    data['IndPDF'] = indPDF;
    data['IndPlattegrond'] = indPlattegrond;
    data['IndTop'] = indTop;
    data['IndVeilingProduct'] = indVeilingProduct;
    data['IndVideo'] = indVideo;
    data['Inhoud'] = inhoud;
    data['InternalId'] = internalId;
    data['IsIngetrokken'] = isIngetrokken;
    data['IsVerhuurd'] = isVerhuurd;
    data['IsVerkocht'] = isVerkocht;
    data['Isolatie'] = isolatie;
    if (kenmerken != null) {
      data['Kenmerken'] = kenmerken!.map((v) => v.toJson()).toList();
    }
    if (kenmerkenKort != null) {
      data['KenmerkenKort'] = kenmerkenKort!.toJson();
    }
    data['Ligging'] = ligging;
    data['MLIUrl'] = mLIUrl;
    data['Makelaar'] = makelaar;
    data['MakelaarId'] = makelaarId;
    data['MakelaarTelefoon'] = makelaarTelefoon;
    if (media != null) {
      data['Media'] = media!.map((v) => v.toJson()).toList();
    }
    data['Media-Foto'] = mediaFoto;
    data['MobileURL'] = mobileURL;
    data['ObjectType'] = objectType;
    data['ObjectTypeMetVoorvoegsel'] = objectTypeMetVoorvoegsel;
    data['PerceelOppervlakte'] = perceelOppervlakte;
    data['PermanenteBewoning'] = permanenteBewoning;
    data['Plaats'] = plaats;
    data['Postcode'] = postcode;
    if (prijs != null) {
      data['Prijs'] = prijs!.toJson();
    }
    data['PrijsGeformatteerd'] = prijsGeformatteerd;
    data['PublicatieDatum'] = publicatieDatum;
    data['PublicatieStatus'] = publicatieStatus;
    data['ScrambledId'] = scrambledId;
    data['ServiceKosten'] = serviceKosten;
    data['SoortAanbod'] = soortAanbod;
    data['SoortDak'] = soortDak;
    data['SoortGarage'] = soortGarage;
    data['SoortParkeergelegenheid'] = soortParkeergelegenheid;
    data['SoortPlaatsing'] = soortPlaatsing;
    data['SoortWoning'] = soortWoning;
    if (titels != null) {
      data['Titels'] = titels!.map((v) => v.toJson()).toList();
    }
    data['ToonBezichtigingMaken'] = toonBezichtigingMaken;
    data['ToonBrochureAanvraag'] = toonBrochureAanvraag;
    data['ToonMakelaarWoningaanbod'] = toonMakelaarWoningaanbod;
    data['ToonReageren'] = toonReageren;
    data['TuinLigging'] = tuinLigging;
    data['TypeProject'] = typeProject;
    data['URL'] = uRL;
    data['VerkoopStatus'] = verkoopStatus;
    data['Verwarming'] = verwarming;
    data['Video'] = video;
    data['VolledigeOmschrijving'] = volledigeOmschrijving;
    data['Voorzieningen'] = voorzieningen;
    data['WGS84_X'] = wGS84X;
    data['WGS84_Y'] = wGS84Y;
    data['WarmWater'] = warmWater;
    data['WoonOppervlakte'] = woonOppervlakte;
    data['KoopPrijs'] = koopPrijs;
    data['KoopPrijsLang'] = koopPrijsLang;
    data['Koopprijs'] = koopprijs;
    data['KoopprijsFormaat'] = koopprijsFormaat;
    data['ShortURL'] = shortURL;
    data['Tuin'] = tuin;
    return data;
  }
}

class BezichtingDagdelen {
  String? naam;
  String? waarde;

  BezichtingDagdelen({this.naam, this.waarde});

  BezichtingDagdelen.fromJson(Map<String, dynamic> json) {
    naam = json['Naam'];
    waarde = json['Waarde'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Naam'] = naam;
    data['Waarde'] = waarde;
    return data;
  }
}

class DetailInfo {
  bool? hasPromotionLabel;
  int? promotionLabelType;
  int? ribbonColor;

  DetailInfo({
    this.hasPromotionLabel,
    this.promotionLabelType,
    this.ribbonColor,
  });

  DetailInfo.fromJson(Map<String, dynamic> json) {
    hasPromotionLabel = json['HasPromotionLabel'];
    promotionLabelType = json['PromotionLabelType'];
    ribbonColor = json['RibbonColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['HasPromotionLabel'] = hasPromotionLabel;
    data['PromotionLabelType'] = promotionLabelType;
    data['RibbonColor'] = ribbonColor;
    return data;
  }
}

class Energielabel {
  bool? definitief;
  String? label;
  bool? nietBeschikbaar;
  bool? nietVerplicht;

  Energielabel(
      {this.definitief, this.label, this.nietBeschikbaar, this.nietVerplicht});

  Energielabel.fromJson(Map<String, dynamic> json) {
    definitief = json['Definitief'];
    label = json['Label'];
    nietBeschikbaar = json['NietBeschikbaar'];
    nietVerplicht = json['NietVerplicht'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Definitief'] = definitief;
    data['Label'] = label;
    data['NietBeschikbaar'] = nietBeschikbaar;
    data['NietVerplicht'] = nietVerplicht;
    return data;
  }
}

class Kenmerken {
  List<KenmerkenDetail>? kenmerken;
  int? lokNummer;
  SubKenmerk? subKenmerk;
  String? titel;

  Kenmerken({this.kenmerken, this.lokNummer, this.subKenmerk, this.titel});

  Kenmerken.fromJson(Map<String, dynamic> json) {
    if (json['Kenmerken'] != null) {
      kenmerken = <KenmerkenDetail>[];
      json['Kenmerken'].forEach((v) {
        kenmerken!.add(KenmerkenDetail.fromJson(v));
      });
    }
    lokNummer = json['LokNummer'];
    subKenmerk = json['SubKenmerk'] != null
        ? SubKenmerk.fromJson(json['SubKenmerk'])
        : null;
    titel = json['Titel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (kenmerken != null) {
      data['Kenmerken'] = kenmerken!.map((v) => v.toJson()).toList();
    }
    data['LokNummer'] = lokNummer;
    if (subKenmerk != null) {
      data['SubKenmerk'] = subKenmerk!.toJson();
    }
    data['Titel'] = titel;
    return data;
  }
}

class KenmerkenDetail {
  String? naam;
  String? naamCss;
  String? waarde;
  String? waardeCss;

  KenmerkenDetail({
    this.naam,
    this.naamCss,
    this.waarde,
    this.waardeCss,
  });

  KenmerkenDetail.fromJson(Map<String, dynamic> json) {
    naam = json['Naam'];
    naamCss = json['NaamCss'];
    waarde = json['Waarde'];
    waardeCss = json['WaardeCss'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Naam'] = naam;
    data['NaamCss'] = naamCss;
    data['Waarde'] = waarde;
    data['WaardeCss'] = waardeCss;
    return data;
  }
}

class SubKenmerk {
  String? ad;
  int? lokNummer;
  String? titel;

  SubKenmerk({this.ad, this.lokNummer, this.titel});

  SubKenmerk.fromJson(Map<String, dynamic> json) {
    ad = json['Ad'];
    lokNummer = json['LokNummer'];
    titel = json['Titel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Ad'] = ad;
    data['LokNummer'] = lokNummer;
    data['Titel'] = titel;
    return data;
  }
}

class KenmerkenKort {
  List<Kenmerken>? kenmerken;
  int? lokNummer;

  KenmerkenKort({this.kenmerken, this.lokNummer, l});

  KenmerkenKort.fromJson(Map<String, dynamic> json) {
    if (json['Kenmerken'] != null) {
      kenmerken = <Kenmerken>[];
      json['Kenmerken'].forEach((v) {
        kenmerken!.add(Kenmerken.fromJson(v));
      });
    }
    lokNummer = json['LokNummer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (kenmerken != null) {
      data['Kenmerken'] = kenmerken!.map((v) => v.toJson()).toList();
    }
    data['LokNummer'] = lokNummer;

    return data;
  }
}

class Media {
  int? categorie;
  int? contentType;
  String? id;
  int? indexNumber;
  List<MediaItems>? mediaItems;
  String? metadata;
  String? omschrijving;
  bool? registratieVerplicht;
  int? soort;

  Media(
      {this.categorie,
      this.contentType,
      this.id,
      this.indexNumber,
      this.mediaItems,
      this.metadata,
      this.omschrijving,
      this.registratieVerplicht,
      this.soort});

  Media.fromJson(Map<String, dynamic> json) {
    categorie = json['Categorie'];
    contentType = json['ContentType'];
    id = json['Id'];
    indexNumber = json['IndexNumber'];
    if (json['MediaItems'] != null) {
      mediaItems = <MediaItems>[];
      json['MediaItems'].forEach((v) {
        mediaItems!.add(MediaItems.fromJson(v));
      });
    }
    metadata = json['Metadata'];
    omschrijving = json['Omschrijving'];
    registratieVerplicht = json['RegistratieVerplicht'];
    soort = json['Soort'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Categorie'] = categorie;
    data['ContentType'] = contentType;
    data['Id'] = id;
    data['IndexNumber'] = indexNumber;
    if (mediaItems != null) {
      data['MediaItems'] = mediaItems!.map((v) => v.toJson()).toList();
    }
    data['Metadata'] = metadata;
    data['Omschrijving'] = omschrijving;
    data['RegistratieVerplicht'] = registratieVerplicht;
    data['Soort'] = soort;
    return data;
  }
}

class MediaItems {
  int? category;
  int? height;
  String? url;
  String? urlSecure;
  int? width;

  MediaItems(
      {this.category, this.height, this.url, this.urlSecure, this.width});

  MediaItems.fromJson(Map<String, dynamic> json) {
    category = json['Category'];
    height = json['Height'];
    url = json['Url'];
    urlSecure = json['UrlSecure'];
    width = json['Width'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Category'] = category;
    data['Height'] = height;
    data['Url'] = url;
    data['UrlSecure'] = urlSecure;
    data['Width'] = width;
    return data;
  }
}

class Prijs {
  String? huurAbbreviation;
  String? huurprijsOpAanvraag;
  String? koopAbbreviation;
  int? koopprijs;
  String? koopprijsOpAanvraag;

  String? veilingText;

  Prijs(
      {this.huurAbbreviation,
      this.huurprijsOpAanvraag,
      this.koopAbbreviation,
      this.koopprijs,
      this.koopprijsOpAanvraag,
      this.veilingText});

  Prijs.fromJson(Map<String, dynamic> json) {
    huurAbbreviation = json['HuurAbbreviation'];
    huurprijsOpAanvraag = json['HuurprijsOpAanvraag'];
    koopAbbreviation = json['KoopAbbreviation'];
    koopprijs = json['Koopprijs'];
    koopprijsOpAanvraag = json['KoopprijsOpAanvraag'];

    veilingText = json['VeilingText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['HuurAbbreviation'] = huurAbbreviation;
    data['HuurprijsOpAanvraag'] = huurprijsOpAanvraag;
    data['KoopAbbreviation'] = koopAbbreviation;
    data['Koopprijs'] = koopprijs;
    data['KoopprijsOpAanvraag'] = koopprijsOpAanvraag;
    data['VeilingText'] = veilingText;
    return data;
  }
}

class Titels {
  String? omschrijving;
  int? pagina;

  Titels({this.omschrijving, this.pagina});

  Titels.fromJson(Map<String, dynamic> json) {
    omschrijving = json['Omschrijving'];
    pagina = json['Pagina'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Omschrijving'] = omschrijving;
    data['Pagina'] = pagina;
    return data;
  }
}
