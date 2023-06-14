// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dishes_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DishesData _$DishesDataFromJson(Map<String, dynamic> json) {
  return _DishesData.fromJson(json);
}

/// @nodoc
mixin _$DishesData {
  List<Dish>? get dishes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DishesDataCopyWith<DishesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishesDataCopyWith<$Res> {
  factory $DishesDataCopyWith(
          DishesData value, $Res Function(DishesData) then) =
      _$DishesDataCopyWithImpl<$Res, DishesData>;
  @useResult
  $Res call({List<Dish>? dishes});
}

/// @nodoc
class _$DishesDataCopyWithImpl<$Res, $Val extends DishesData>
    implements $DishesDataCopyWith<$Res> {
  _$DishesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = freezed,
  }) {
    return _then(_value.copyWith(
      dishes: freezed == dishes
          ? _value.dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<Dish>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DishesDataCopyWith<$Res>
    implements $DishesDataCopyWith<$Res> {
  factory _$$_DishesDataCopyWith(
          _$_DishesData value, $Res Function(_$_DishesData) then) =
      __$$_DishesDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Dish>? dishes});
}

/// @nodoc
class __$$_DishesDataCopyWithImpl<$Res>
    extends _$DishesDataCopyWithImpl<$Res, _$_DishesData>
    implements _$$_DishesDataCopyWith<$Res> {
  __$$_DishesDataCopyWithImpl(
      _$_DishesData _value, $Res Function(_$_DishesData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = freezed,
  }) {
    return _then(_$_DishesData(
      dishes: freezed == dishes
          ? _value._dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<Dish>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DishesData implements _DishesData {
  const _$_DishesData({final List<Dish>? dishes}) : _dishes = dishes;

  factory _$_DishesData.fromJson(Map<String, dynamic> json) =>
      _$$_DishesDataFromJson(json);

  final List<Dish>? _dishes;
  @override
  List<Dish>? get dishes {
    final value = _dishes;
    if (value == null) return null;
    if (_dishes is EqualUnmodifiableListView) return _dishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DishesData(dishes: $dishes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DishesData &&
            const DeepCollectionEquality().equals(other._dishes, _dishes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dishes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DishesDataCopyWith<_$_DishesData> get copyWith =>
      __$$_DishesDataCopyWithImpl<_$_DishesData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DishesDataToJson(
      this,
    );
  }
}

abstract class _DishesData implements DishesData {
  const factory _DishesData({final List<Dish>? dishes}) = _$_DishesData;

  factory _DishesData.fromJson(Map<String, dynamic> json) =
      _$_DishesData.fromJson;

  @override
  List<Dish>? get dishes;
  @override
  @JsonKey(ignore: true)
  _$$_DishesDataCopyWith<_$_DishesData> get copyWith =>
      throw _privateConstructorUsedError;
}

Dish _$DishFromJson(Map<String, dynamic> json) {
  return _Dish.fromJson(json);
}

/// @nodoc
mixin _$Dish {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  String? get description =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  List<String>? get tegs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DishCopyWith<Dish> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishCopyWith<$Res> {
  factory $DishCopyWith(Dish value, $Res Function(Dish) then) =
      _$DishCopyWithImpl<$Res, Dish>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? price,
      int? weight,
      String? description,
      @JsonKey(name: 'image_url') String? imageUrl,
      List<String>? tegs});
}

/// @nodoc
class _$DishCopyWithImpl<$Res, $Val extends Dish>
    implements $DishCopyWith<$Res> {
  _$DishCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? weight = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? tegs = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tegs: freezed == tegs
          ? _value.tegs
          : tegs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DishCopyWith<$Res> implements $DishCopyWith<$Res> {
  factory _$$_DishCopyWith(_$_Dish value, $Res Function(_$_Dish) then) =
      __$$_DishCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? price,
      int? weight,
      String? description,
      @JsonKey(name: 'image_url') String? imageUrl,
      List<String>? tegs});
}

/// @nodoc
class __$$_DishCopyWithImpl<$Res> extends _$DishCopyWithImpl<$Res, _$_Dish>
    implements _$$_DishCopyWith<$Res> {
  __$$_DishCopyWithImpl(_$_Dish _value, $Res Function(_$_Dish) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? weight = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? tegs = freezed,
  }) {
    return _then(_$_Dish(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tegs: freezed == tegs
          ? _value._tegs
          : tegs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dish implements _Dish {
  const _$_Dish(
      {this.id,
      this.name,
      this.price,
      this.weight,
      this.description,
      @JsonKey(name: 'image_url') this.imageUrl,
      final List<String>? tegs})
      : _tegs = tegs;

  factory _$_Dish.fromJson(Map<String, dynamic> json) => _$$_DishFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? price;
  @override
  final int? weight;
  @override
  final String? description;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  final List<String>? _tegs;
  @override
  List<String>? get tegs {
    final value = _tegs;
    if (value == null) return null;
    if (_tegs is EqualUnmodifiableListView) return _tegs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Dish(id: $id, name: $name, price: $price, weight: $weight, description: $description, imageUrl: $imageUrl, tegs: $tegs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dish &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._tegs, _tegs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, weight,
      description, imageUrl, const DeepCollectionEquality().hash(_tegs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DishCopyWith<_$_Dish> get copyWith =>
      __$$_DishCopyWithImpl<_$_Dish>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DishToJson(
      this,
    );
  }
}

abstract class _Dish implements Dish {
  const factory _Dish(
      {final int? id,
      final String? name,
      final int? price,
      final int? weight,
      final String? description,
      @JsonKey(name: 'image_url') final String? imageUrl,
      final List<String>? tegs}) = _$_Dish;

  factory _Dish.fromJson(Map<String, dynamic> json) = _$_Dish.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get price;
  @override
  int? get weight;
  @override
  String? get description;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  List<String>? get tegs;
  @override
  @JsonKey(ignore: true)
  _$$_DishCopyWith<_$_Dish> get copyWith => throw _privateConstructorUsedError;
}
