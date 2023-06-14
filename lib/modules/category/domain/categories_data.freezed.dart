// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoriesData _$CategoriesDataFromJson(Map<String, dynamic> json) {
  return _CategoriesData.fromJson(json);
}

/// @nodoc
mixin _$CategoriesData {
// ignore: invalid_annotation_target
  @JsonKey(name: 'сategories')
  List<Categories>? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesDataCopyWith<CategoriesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesDataCopyWith<$Res> {
  factory $CategoriesDataCopyWith(
          CategoriesData value, $Res Function(CategoriesData) then) =
      _$CategoriesDataCopyWithImpl<$Res, CategoriesData>;
  @useResult
  $Res call({@JsonKey(name: 'сategories') List<Categories>? categories});
}

/// @nodoc
class _$CategoriesDataCopyWithImpl<$Res, $Val extends CategoriesData>
    implements $CategoriesDataCopyWith<$Res> {
  _$CategoriesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Categories>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoriesDataCopyWith<$Res>
    implements $CategoriesDataCopyWith<$Res> {
  factory _$$_CategoriesDataCopyWith(
          _$_CategoriesData value, $Res Function(_$_CategoriesData) then) =
      __$$_CategoriesDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'сategories') List<Categories>? categories});
}

/// @nodoc
class __$$_CategoriesDataCopyWithImpl<$Res>
    extends _$CategoriesDataCopyWithImpl<$Res, _$_CategoriesData>
    implements _$$_CategoriesDataCopyWith<$Res> {
  __$$_CategoriesDataCopyWithImpl(
      _$_CategoriesData _value, $Res Function(_$_CategoriesData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_$_CategoriesData(
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Categories>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoriesData implements _CategoriesData {
  const _$_CategoriesData(
      {@JsonKey(name: 'сategories') final List<Categories>? categories})
      : _categories = categories;

  factory _$_CategoriesData.fromJson(Map<String, dynamic> json) =>
      _$$_CategoriesDataFromJson(json);

// ignore: invalid_annotation_target
  final List<Categories>? _categories;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'сategories')
  List<Categories>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoriesData(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesData &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesDataCopyWith<_$_CategoriesData> get copyWith =>
      __$$_CategoriesDataCopyWithImpl<_$_CategoriesData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoriesDataToJson(
      this,
    );
  }
}

abstract class _CategoriesData implements CategoriesData {
  const factory _CategoriesData(
          {@JsonKey(name: 'сategories') final List<Categories>? categories}) =
      _$_CategoriesData;

  factory _CategoriesData.fromJson(Map<String, dynamic> json) =
      _$_CategoriesData.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'сategories')
  List<Categories>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesDataCopyWith<_$_CategoriesData> get copyWith =>
      throw _privateConstructorUsedError;
}

Categories _$CategoriesFromJson(Map<String, dynamic> json) {
  return _Categories.fromJson(json);
}

/// @nodoc
mixin _$Categories {
  int? get id => throw _privateConstructorUsedError;
  String? get name =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesCopyWith<Categories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesCopyWith<$Res> {
  factory $CategoriesCopyWith(
          Categories value, $Res Function(Categories) then) =
      _$CategoriesCopyWithImpl<$Res, Categories>;
  @useResult
  $Res call(
      {int? id, String? name, @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class _$CategoriesCopyWithImpl<$Res, $Val extends Categories>
    implements $CategoriesCopyWith<$Res> {
  _$CategoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoriesCopyWith<$Res>
    implements $CategoriesCopyWith<$Res> {
  factory _$$_CategoriesCopyWith(
          _$_Categories value, $Res Function(_$_Categories) then) =
      __$$_CategoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String? name, @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class __$$_CategoriesCopyWithImpl<$Res>
    extends _$CategoriesCopyWithImpl<$Res, _$_Categories>
    implements _$$_CategoriesCopyWith<$Res> {
  __$$_CategoriesCopyWithImpl(
      _$_Categories _value, $Res Function(_$_Categories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_Categories(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Categories implements _Categories {
  const _$_Categories(
      {this.id, this.name, @JsonKey(name: 'image_url') this.imageUrl});

  factory _$_Categories.fromJson(Map<String, dynamic> json) =>
      _$$_CategoriesFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @override
  String toString() {
    return 'Categories(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Categories &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesCopyWith<_$_Categories> get copyWith =>
      __$$_CategoriesCopyWithImpl<_$_Categories>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoriesToJson(
      this,
    );
  }
}

abstract class _Categories implements Categories {
  const factory _Categories(
      {final int? id,
      final String? name,
      @JsonKey(name: 'image_url') final String? imageUrl}) = _$_Categories;

  factory _Categories.fromJson(Map<String, dynamic> json) =
      _$_Categories.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesCopyWith<_$_Categories> get copyWith =>
      throw _privateConstructorUsedError;
}
