// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dishes_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DishesData _$$_DishesDataFromJson(Map<String, dynamic> json) =>
    _$_DishesData(
      dishes: (json['dishes'] as List<dynamic>?)
          ?.map((e) => Dish.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DishesDataToJson(_$_DishesData instance) =>
    <String, dynamic>{
      'dishes': instance.dishes,
    };

_$_Dish _$$_DishFromJson(Map<String, dynamic> json) => _$_Dish(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: json['price'] as int?,
      weight: json['weight'] as int?,
      description: json['description'] as String?,
      imageUrl: json['image_url'] as String?,
      tegs: (json['tegs'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_DishToJson(_$_Dish instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'weight': instance.weight,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'tegs': instance.tegs,
    };
