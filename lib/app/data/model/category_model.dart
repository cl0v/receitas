import 'dart:convert';

import 'package:flutter/material.dart';

class CategoryModel {
  Color color;
  String title;
  double totalValue;
  CategoryModel({
    this.color,
    this.title,
    this.totalValue,
  });

  Map<String, dynamic> toMap() {
    return {
      'color': color?.value,
      'title': title,
      'totalValue': totalValue,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return CategoryModel(
      color: Color(map['color']),
      title: map['title'],
      totalValue: map['totalValue'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) => CategoryModel.fromMap(json.decode(source));
}
