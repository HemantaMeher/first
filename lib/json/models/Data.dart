// class Data {
//   Data({
//       this.iDNation,
//       this.nation,
//       this.iDYear,
//       this.year,
//       this.population,
//       this.slugNation,});
//
//   Data.fromJson(dynamic json) {
//     iDNation = json['ID Nation'];
//     nation = json['Nation'];
//     iDYear = json['ID Year'];
//     year = json['Year'];
//     population = json['Population'];
//     slugNation = json['Slug Nation'];
//   }
//   String iDNation;
//   String nation;
//   int iDYear;
//   String year;
//   int population;
//   String slugNation;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['ID Nation'] = iDNation;
//     map['Nation'] = nation;
//     map['ID Year'] = iDYear;
//     map['Year'] = year;
//     map['Population'] = population;
//     map['Slug Nation'] = slugNation;
//     return map;
//   }
//
// }