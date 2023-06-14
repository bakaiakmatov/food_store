import 'package:freezed_annotation/freezed_annotation.dart';

part 'dishes_data.freezed.dart';
part 'dishes_data.g.dart';

@freezed
class DishesData with _$DishesData {
  const factory DishesData({
    List<Dish>? dishes,
  }) = _DishesData;

  factory DishesData.fromJson(Map<String, dynamic> json) =>
      _$DishesDataFromJson(json);
}

@freezed
class Dish with _$Dish {
  const factory Dish({
    int? id,
    String? name,
    int? price,
    int? weight,
    String? description,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'image_url') String? imageUrl,
    List<String>? tegs,
  }) = _Dish;

  factory Dish.fromJson(Map<String, dynamic> json) => _$DishFromJson(json);
}
