// import 'Annotations.dart';
//
// class Source {
//   Source({
//       this.measures,
//       this.annotations,
//       this.name,
//       this.substitutions,});
//
//   Source.fromJson(dynamic json) {
//     measures = json['measures'] != null ? json['measures'].cast<String>() : [];
//     annotations = json['annotations'] != null ? Annotations.fromJson(json['annotations']) : null;
//     name = json['name'];
//     if (json['substitutions'] != null) {
//       substitutions = [];
//       json['substitutions'].forEach((v) {
//         substitutions.add(Dynamic.fromJson(v));
//       });
//     }
//   }
//   List<String> measures;
//   Annotations annotations;
//   String name;
//   List<dynamic> substitutions;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['measures'] = measures;
//     if (annotations != null) {
//       map['annotations'] = annotations.toJson();
//     }
//     map['name'] = name;
//     if (substitutions != null) {
//       map['substitutions'] = substitutions.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
//
// }