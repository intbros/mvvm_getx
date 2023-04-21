import 'dart:convert';

SampleModel sampleModelFromJson(String str) => SampleModel.fromJson(json.decode(str));
String sampleModelToJson(SampleModel data) => json.encode(data.toJson());
class SampleModel {
  SampleModel({
      this.albumId, 
      this.id, 
      this.title, 
      this.url, 
      this.thumbnailUrl,});

  SampleModel.fromJson(dynamic json) {
    albumId = json['albumId'];
    id = json['id'];
    title = json['title'];
    url = json['url'];
    thumbnailUrl = json['thumbnailUrl'];
  }
  num? albumId;
  num? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['albumId'] = albumId;
    map['id'] = id;
    map['title'] = title;
    map['url'] = url;
    map['thumbnailUrl'] = thumbnailUrl;
    return map;
  }

}