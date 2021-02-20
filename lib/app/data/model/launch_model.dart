
import 'category_model.dart';

final String columnId = '_id';
final String columnTitle = 'title';
final String columnDescription = 'description';
final String columnCategory = 'category';
final String columnValue = 'value';
final String columnDate = 'date';

class LaunchModel {
  int id;
  CategoryModel category;
  String title;
  String description;
  num value;
  int date; // millisSinceEpoch

  LaunchModel({
    this.category,
    this.title,
    this.description,
    this.value,
    this.date,
  });
  //Data;

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      columnTitle: category,
      columnDescription: title,
      columnCategory: description,
      columnValue: value,
      columnDate: date,
    };

    if (id != null) {
      map[columnId] = id;
    }

    return map;
    
  }

  LaunchModel.fromMap(Map<String, dynamic> map) {
    
      id= map[columnId];
      category= CategoryModel.fromMap(map[columnTitle]);
      title= map[columnDescription];
      description= map[columnCategory];
      value= map[columnValue];
      date= map[columnDate];
    
  }

}
