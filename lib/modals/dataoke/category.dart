// To parse this JSON data, do
//
//     final category = categoryFromJson(jsonString);




import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'category.g.dart';

part 'category.freezed.dart';



@freezed
@HiveType(typeId: 100)
class Category with _$Category {
  const Category._();

  const factory Category({
    @HiveField(0) @Default('') String cname,
    @HiveField(1) @Default('') String cpic,
    @HiveField(2) @Default([]) List<Subcategory> subcategories,
    @HiveField(3) @Default(0) int cid,
  }) = _Category;

  factory Category.fromJson(dynamic json) => _$CategoryFromJson(json);

}


@freezed
@HiveType(typeId: 101)
class Subcategory with _$Subcategory {
  const Subcategory._();

  const factory Subcategory({
    @HiveField(0)  @Default(0) int subcid,
    @HiveField(1) @Default('') String scpic,
    @HiveField(2) @Default('') String subcname,
  }) = _Subcategory;

  factory Subcategory.fromJson(Map<String, dynamic> json) => _$SubcategoryFromJson(json);

}


@freezed
@HiveType(typeId: 102)
class CategoryWrapper with _$CategoryWrapper {
  const CategoryWrapper._();

  const factory CategoryWrapper({
    @HiveField(0) @Default([]) List<Category> categorys,
  }) = _CategoryWrapper;

  factory CategoryWrapper.fromJson(Map<String, dynamic> json) => _$CategoryWrapperFromJson(json);

}