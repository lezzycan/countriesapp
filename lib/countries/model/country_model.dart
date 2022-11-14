// import 'dart:convert';

// import 'package:flutter/widgets.dart';

// // List<CountryModel> countriesModelFromJson(String str) =>
// //     List<CountryModel>.from(
// //         json.decode(str).map((x) => CountryModel.fromJson(x)));

// // String countriesModelToJson(List<CountriesModel> data) =>
// //     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class CountryModel  with ChangeNotifier{
//   Name? name;
//   List<String>? tld;
//   bool? independent;

//   List<String>? capital;
//   List<String>? altSpellings;
//   String? region;
//   String? subregion;
//   Languages? languages;
//   Translations? translations;
//   String? flag;
//   Maps? maps;
//   int? population;
//   Gini? gini;
//   Car? car;
//   List<String>? timezones;
//   List<String>? continents;
//   Flags? flags;
//   Flags? coatOfArms;
//   String? startOfWeek;
//   CapitalInfo? capitalInfo;
//   int? area;

//   CountryModel(
//       {this.name,
//       this.tld,
//       this.independent,
//       this.capital,
//       this.altSpellings,
//       this.region,
//       this.subregion,
//       this.languages,
//       this.translations,
//       this.area,
//       this.flag,
//       this.maps,
//       this.population,
//       this.gini,
//       this.car,
//       this.timezones,
//       this.continents,
//       this.flags,
//       this.coatOfArms,
//       this.startOfWeek,
//       this.capitalInfo});


//   static List<CountryModel> countriesFromJson(List countriesJson) {
//     return countriesJson.map((data) {
//       return CountryModel.fromJson(data);
//     }).toList();
//   }

//   CountryModel.fromJson(Map<String, dynamic> json) {
//     name = json['name'] != null ? new Name.fromJson(json['name']) : null;
//     tld = json['tld'].cast<String>();

//     independent = json['independent'];

//     capital = json['capital'].cast<String>();
//     altSpellings = json['altSpellings'].cast<String>();
//     region = json['region'];
//     subregion = json['subregion'];
//     languages = json['languages'] != null
//         ? new Languages.fromJson(json['languages'])
//         : null;
//     translations = json['translations'] != null
//         ? new Translations.fromJson(json['translations'])
//         : null;

//     area = json['area'];

//     flag = json['flag'];
//     maps = json['maps'] != null ? new Maps.fromJson(json['maps']) : null;
//     population = json['population'];
//     gini = json['gini'] != null ? new Gini.fromJson(json['gini']) : null;

//     car = json['car'] != null ? new Car.fromJson(json['car']) : null;
//     timezones = json['timezones'].cast<String>();
//     continents = json['continents'].cast<String>();
//     flags = json['flags'] != null ? new Flags.fromJson(json['flags']) : null;
//     coatOfArms = json['coatOfArms'] != null
//         ? new Flags.fromJson(json['coatOfArms'])
//         : null;
//     startOfWeek = json['startOfWeek'];
//     capitalInfo = json['capitalInfo'] != null
//         ? new CapitalInfo.fromJson(json['capitalInfo'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.name != null) {
//       data['name'] = this.name!.toJson();
//     }
//     data['tld'] = this.tld;

//     data['independent'] = this.independent;

//     data['capital'] = this.capital;
//     data['altSpellings'] = this.altSpellings;
//     data['region'] = this.region;
//     data['subregion'] = this.subregion;
//     if (this.languages != null) {
//       data['languages'] = this.languages!.toJson();
//     }
//     if (this.translations != null) {
//       data['translations'] = this.translations!.toJson();
//     }

//     data['area'] = this.area;

//     data['flag'] = this.flag;
//     if (this.maps != null) {
//       data['maps'] = this.maps!.toJson();
//     }
//     data['population'] = this.population;
//     if (this.gini != null) {
//       data['gini'] = this.gini!.toJson();
//     }

//     if (this.car != null) {
//       data['car'] = this.car!.toJson();
//     }
//     data['timezones'] = this.timezones;
//     data['continents'] = this.continents;
//     if (this.flags != null) {
//       data['flags'] = this.flags!.toJson();
//     }
//     if (this.coatOfArms != null) {
//       data['coatOfArms'] = this.coatOfArms!.toJson();
//     }
//     data['startOfWeek'] = this.startOfWeek;
//     if (this.capitalInfo != null) {
//       data['capitalInfo'] = this.capitalInfo!.toJson();
//     }
//     return data;
//   }
// }

// class Name {
//   String? common;
//   String? official;
//   NativeName? nativeName;

//   Name({this.common, this.official, this.nativeName});

//   Name.fromJson(Map<String, dynamic> json) {
//     common = json['common'];
//     official = json['official'];
//     nativeName = json['nativeName'] != null
//         ? new NativeName.fromJson(json['nativeName'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['common'] = this.common;
//     data['official'] = this.official;
//     if (this.nativeName != null) {
//       data['nativeName'] = this.nativeName!.toJson();
//     }
//     return data;
//   }
// }

// class NativeName {
//   Ara? ara;

//   NativeName({this.ara});

//   NativeName.fromJson(Map<String, dynamic> json) {
//     ara = json['ara'] != null ? new Ara.fromJson(json['ara']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.ara != null) {
//       data['ara'] = this.ara!.toJson();
//     }
//     return data;
//   }
// }

// class Ara {
//   String? official;
//   String? common;

//   Ara({this.official, this.common});

//   Ara.fromJson(Map<String, dynamic> json) {
//     official = json['official'];
//     common = json['common'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['official'] = this.official;
//     data['common'] = this.common;
//     return data;
//   }
// }

// class Languages {
//   String? ara;

//   Languages({this.ara});

//   Languages.fromJson(Map<String, dynamic> json) {
//     ara = json['ara'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['ara'] = this.ara;
//     return data;
//   }
// }

// class Translations {
//   Ara? ara;
//   Ara? bre;
//   Ara? ces;
//   Ara? cym;
//   Ara? deu;
//   Ara? est;
//   Ara? fin;
//   Eng? fra;
//   Ara? hrv;
//   Ara? hun;
//   Ara? ita;
//   Ara? jpn;
//   Ara? kor;
//   Ara? nld;
//   Ara? per;
//   Ara? pol;
//   Ara? por;
//   Ara? rus;
//   Ara? slk;
//   Ara? spa;
//   Ara? swe;
//   Ara? tur;
//   Ara? urd;
//   Ara? zho;

//   Translations(
//       {this.ara,
//       this.bre,
//       this.ces,
//       this.cym,
//       this.deu,
//       this.est,
//       this.fin,
//       this.fra,
//       this.hrv,
//       this.hun,
//       this.ita,
//       this.jpn,
//       this.kor,
//       this.nld,
//       this.per,
//       this.pol,
//       this.por,
//       this.rus,
//       this.slk,
//       this.spa,
//       this.swe,
//       this.tur,
//       this.urd,
//       this.zho});

//   Translations.fromJson(Map<String, dynamic> json) {
//     ara = json['ara'] != null ? new Ara.fromJson(json['ara']) : null;
//     bre = json['bre'] != null ? new Ara.fromJson(json['bre']) : null;
//     ces = json['ces'] != null ? new Ara.fromJson(json['ces']) : null;
//     cym = json['cym'] != null ? new Ara.fromJson(json['cym']) : null;
//     deu = json['deu'] != null ? new Ara.fromJson(json['deu']) : null;
//     est = json['est'] != null ? new Ara.fromJson(json['est']) : null;
//     fin = json['fin'] != null ? new Ara.fromJson(json['fin']) : null;
//     fra = json['fra'] != null ? new Eng.fromJson(json['fra']) : null;
//     hrv = json['hrv'] != null ? new Ara.fromJson(json['hrv']) : null;
//     hun = json['hun'] != null ? new Ara.fromJson(json['hun']) : null;
//     ita = json['ita'] != null ? new Ara.fromJson(json['ita']) : null;
//     jpn = json['jpn'] != null ? new Ara.fromJson(json['jpn']) : null;
//     kor = json['kor'] != null ? new Ara.fromJson(json['kor']) : null;
//     nld = json['nld'] != null ? new Ara.fromJson(json['nld']) : null;
//     per = json['per'] != null ? new Ara.fromJson(json['per']) : null;
//     pol = json['pol'] != null ? new Ara.fromJson(json['pol']) : null;
//     por = json['por'] != null ? new Ara.fromJson(json['por']) : null;
//     rus = json['rus'] != null ? new Ara.fromJson(json['rus']) : null;
//     slk = json['slk'] != null ? new Ara.fromJson(json['slk']) : null;
//     spa = json['spa'] != null ? new Ara.fromJson(json['spa']) : null;
//     swe = json['swe'] != null ? new Ara.fromJson(json['swe']) : null;
//     tur = json['tur'] != null ? new Ara.fromJson(json['tur']) : null;
//     urd = json['urd'] != null ? new Ara.fromJson(json['urd']) : null;
//     zho = json['zho'] != null ? new Ara.fromJson(json['zho']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.ara != null) {
//       data['ara'] = this.ara!.toJson();
//     }
//     if (this.bre != null) {
//       data['bre'] = this.bre!.toJson();
//     }
//     if (this.ces != null) {
//       data['ces'] = this.ces!.toJson();
//     }
//     if (this.cym != null) {
//       data['cym'] = this.cym!.toJson();
//     }
//     if (this.deu != null) {
//       data['deu'] = this.deu!.toJson();
//     }
//     if (this.est != null) {
//       data['est'] = this.est!.toJson();
//     }
//     if (this.fin != null) {
//       data['fin'] = this.fin!.toJson();
//     }
//     if (this.fra != null) {
//       data['fra'] = this.fra!.toJson();
//     }
//     if (this.hrv != null) {
//       data['hrv'] = this.hrv!.toJson();
//     }
//     if (this.hun != null) {
//       data['hun'] = this.hun!.toJson();
//     }
//     if (this.ita != null) {
//       data['ita'] = this.ita!.toJson();
//     }
//     if (this.jpn != null) {
//       data['jpn'] = this.jpn!.toJson();
//     }
//     if (this.kor != null) {
//       data['kor'] = this.kor!.toJson();
//     }
//     if (this.nld != null) {
//       data['nld'] = this.nld!.toJson();
//     }
//     if (this.per != null) {
//       data['per'] = this.per!.toJson();
//     }
//     if (this.pol != null) {
//       data['pol'] = this.pol!.toJson();
//     }
//     if (this.por != null) {
//       data['por'] = this.por!.toJson();
//     }
//     if (this.rus != null) {
//       data['rus'] = this.rus!.toJson();
//     }
//     if (this.slk != null) {
//       data['slk'] = this.slk!.toJson();
//     }
//     if (this.spa != null) {
//       data['spa'] = this.spa!.toJson();
//     }
//     if (this.swe != null) {
//       data['swe'] = this.swe!.toJson();
//     }
//     if (this.tur != null) {
//       data['tur'] = this.tur!.toJson();
//     }
//     if (this.urd != null) {
//       data['urd'] = this.urd!.toJson();
//     }
//     if (this.zho != null) {
//       data['zho'] = this.zho!.toJson();
//     }
//     return data;
//   }
// }

// class Eng {
//   String? f;
//   String? m;

//   Eng({this.f, this.m});

//   Eng.fromJson(Map<String, dynamic> json) {
//     f = json['f'];
//     m = json['m'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['f'] = this.f;
//     data['m'] = this.m;
//     return data;
//   }
// }

// class Maps {
//   String? googleMaps;
//   String? openStreetMaps;

//   Maps({this.googleMaps, this.openStreetMaps});

//   Maps.fromJson(Map<String, dynamic> json) {
//     googleMaps = json['googleMaps'];
//     openStreetMaps = json['openStreetMaps'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['googleMaps'] = this.googleMaps;
//     data['openStreetMaps'] = this.openStreetMaps;
//     return data;
//   }
// }

// class Gini {
//   double? d2014;

//   Gini({this.d2014});

//   Gini.fromJson(Map<String, dynamic> json) {
//     d2014 = json['2014'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['2014'] = this.d2014;
//     return data;
//   }
// }

// class Car {
//   List<String>? signs;
//   String? side;

//   Car({this.signs, this.side});

//   Car.fromJson(Map<String, dynamic> json) {
//     signs = json['signs'].cast<String>();
//     side = json['side'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['signs'] = this.signs;
//     data['side'] = this.side;
//     return data;
//   }
// }

// class Flags {
//   String? png;
//   String? svg;

//   Flags({this.png, this.svg});

//   Flags.fromJson(Map<String, dynamic> json) {
//     png = json['png'];
//     svg = json['svg'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['png'] = this.png;
//     data['svg'] = this.svg;
//     return data;
//   }
// }

// class CapitalInfo {
//   List<double>? latlng;

//   CapitalInfo({this.latlng});

//   CapitalInfo.fromJson(Map<String, dynamic> json) {
//     latlng = json['latlng'].cast<double>();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['latlng'] = this.latlng;
//     return data;
//   }


// }
