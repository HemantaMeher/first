// import 'Data.dart';
// import 'Source.dart';
//
// class PopulationModel {
//   PopulationModel({
//       this.data,
//       this.source,});
//
//   PopulationModel.fromJson(dynamic json) {
//     if (json['data'] != null) {
//       data = [];
//       json['data'].forEach((v) {
//         data.add(Data.fromJson(v));
//       });
//     }
//     if (json['source'] != null) {
//       source = [];
//       json['source'].forEach((v) {
//         source.add(Source.fromJson(v));
//       });
//     }
//   }
//   List<Data> data;
//   List<Source> source;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     if (data != null) {
//       map['data'] = data.map((v) => v.toJson()).toList();
//     }
//     if (source != null) {
//       map['source'] = source.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
//
// }