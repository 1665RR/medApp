import 'dart:convert';

List<CategoryModel> categoryModelFromJson(String str) =>
    List<CategoryModel>.from(json.decode(str).map((x) => CategoryModel.fromJson(x)));

String categoryModelToJson(List<CategoryModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryModel {
  CategoryModel({
    required this.key,
    required this.label,
  });

  String key;
  String label;


  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    key: json["key"],
    label: json["label"],
  );

  Map<String, dynamic> toJson() => {
    "key": key,
    "label": label,
  };
}

