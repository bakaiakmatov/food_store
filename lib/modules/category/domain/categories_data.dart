import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_data.freezed.dart';
part 'categories_data.g.dart';

@freezed
class CategoriesData with _$CategoriesData {
  const factory CategoriesData({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'сategories') List<Categories>? categories,
  }) = _CategoriesData;

  factory CategoriesData.fromJson(Map<String, dynamic> json) =>
      _$CategoriesDataFromJson(json);
}

@freezed
class Categories with _$Categories {
  const factory Categories({
    int? id,
    String? name,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'image_url') String? imageUrl,
  }) = _Categories;

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);
}
