// class Annotations {
//   Annotations({
//       this.sourceName,
//       this.sourceDescription,
//       this.datasetName,
//       this.datasetLink,
//       this.tableId,
//       this.topic,
//       this.subtopic,});
//
//   Annotations.fromJson(dynamic json) {
//     sourceName = json['source_name'];
//     sourceDescription = json['source_description'];
//     datasetName = json['dataset_name'];
//     datasetLink = json['dataset_link'];
//     tableId = json['table_id'];
//     topic = json['topic'];
//     subtopic = json['subtopic'];
//   }
//   String sourceName;
//   String sourceDescription;
//   String datasetName;
//   String datasetLink;
//   String tableId;
//   String topic;
//   String subtopic;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['source_name'] = sourceName;
//     map['source_description'] = sourceDescription;
//     map['dataset_name'] = datasetName;
//     map['dataset_link'] = datasetLink;
//     map['table_id'] = tableId;
//     map['topic'] = topic;
//     map['subtopic'] = subtopic;
//     return map;
//   }
//
// }