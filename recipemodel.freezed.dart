// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipemodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) {
  return _RecipeModel.fromJson(json);
}

/// @nodoc
class _$RecipeModelTearOff {
  const _$RecipeModelTearOff();

  _RecipeModel call(int id, String recipeName, String recipeImage,
      List<String> recipeIng, List<String> recipeSteps) {
    return _RecipeModel(
      id,
      recipeName,
      recipeImage,
      recipeIng,
      recipeSteps,
    );
  }

  RecipeModel fromJson(Map<String, Object?> json) {
    return RecipeModel.fromJson(json);
  }
}

/// @nodoc
const $RecipeModel = _$RecipeModelTearOff();

/// @nodoc
mixin _$RecipeModel {
  int get id => throw _privateConstructorUsedError;
  String get recipeName => throw _privateConstructorUsedError;
  String get recipeImage => throw _privateConstructorUsedError;
  List<String> get recipeIng => throw _privateConstructorUsedError;
  List<String> get recipeSteps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeModelCopyWith<RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeModelCopyWith<$Res> {
  factory $RecipeModelCopyWith(
          RecipeModel value, $Res Function(RecipeModel) then) =
      _$RecipeModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String recipeName,
      String recipeImage,
      List<String> recipeIng,
      List<String> recipeSteps});
}

/// @nodoc
class _$RecipeModelCopyWithImpl<$Res> implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._value, this._then);

  final RecipeModel _value;
  // ignore: unused_field
  final $Res Function(RecipeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? recipeName = freezed,
    Object? recipeImage = freezed,
    Object? recipeIng = freezed,
    Object? recipeSteps = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      recipeName: recipeName == freezed
          ? _value.recipeName
          : recipeName // ignore: cast_nullable_to_non_nullable
              as String,
      recipeImage: recipeImage == freezed
          ? _value.recipeImage
          : recipeImage // ignore: cast_nullable_to_non_nullable
              as String,
      recipeIng: recipeIng == freezed
          ? _value.recipeIng
          : recipeIng // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recipeSteps: recipeSteps == freezed
          ? _value.recipeSteps
          : recipeSteps // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$RecipeModelCopyWith<$Res>
    implements $RecipeModelCopyWith<$Res> {
  factory _$RecipeModelCopyWith(
          _RecipeModel value, $Res Function(_RecipeModel) then) =
      __$RecipeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String recipeName,
      String recipeImage,
      List<String> recipeIng,
      List<String> recipeSteps});
}

/// @nodoc
class __$RecipeModelCopyWithImpl<$Res> extends _$RecipeModelCopyWithImpl<$Res>
    implements _$RecipeModelCopyWith<$Res> {
  __$RecipeModelCopyWithImpl(
      _RecipeModel _value, $Res Function(_RecipeModel) _then)
      : super(_value, (v) => _then(v as _RecipeModel));

  @override
  _RecipeModel get _value => super._value as _RecipeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? recipeName = freezed,
    Object? recipeImage = freezed,
    Object? recipeIng = freezed,
    Object? recipeSteps = freezed,
  }) {
    return _then(_RecipeModel(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      recipeName == freezed
          ? _value.recipeName
          : recipeName // ignore: cast_nullable_to_non_nullable
              as String,
      recipeImage == freezed
          ? _value.recipeImage
          : recipeImage // ignore: cast_nullable_to_non_nullable
              as String,
      recipeIng == freezed
          ? _value.recipeIng
          : recipeIng // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recipeSteps == freezed
          ? _value.recipeSteps
          : recipeSteps // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeModel implements _RecipeModel {
  _$_RecipeModel(this.id, this.recipeName, this.recipeImage, this.recipeIng,
      this.recipeSteps);

  factory _$_RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeModelFromJson(json);

  @override
  final int id;
  @override
  final String recipeName;
  @override
  final String recipeImage;
  @override
  final List<String> recipeIng;
  @override
  final List<String> recipeSteps;

  @override
  String toString() {
    return 'RecipeModel(id: $id, recipeName: $recipeName, recipeImage: $recipeImage, recipeIng: $recipeIng, recipeSteps: $recipeSteps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecipeModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.recipeName, recipeName) &&
            const DeepCollectionEquality()
                .equals(other.recipeImage, recipeImage) &&
            const DeepCollectionEquality().equals(other.recipeIng, recipeIng) &&
            const DeepCollectionEquality()
                .equals(other.recipeSteps, recipeSteps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(recipeName),
      const DeepCollectionEquality().hash(recipeImage),
      const DeepCollectionEquality().hash(recipeIng),
      const DeepCollectionEquality().hash(recipeSteps));

  @JsonKey(ignore: true)
  @override
  _$RecipeModelCopyWith<_RecipeModel> get copyWith =>
      __$RecipeModelCopyWithImpl<_RecipeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeModelToJson(this);
  }
}

abstract class _RecipeModel implements RecipeModel {
  factory _RecipeModel(int id, String recipeName, String recipeImage,
      List<String> recipeIng, List<String> recipeSteps) = _$_RecipeModel;

  factory _RecipeModel.fromJson(Map<String, dynamic> json) =
      _$_RecipeModel.fromJson;

  @override
  int get id;
  @override
  String get recipeName;
  @override
  String get recipeImage;
  @override
  List<String> get recipeIng;
  @override
  List<String> get recipeSteps;
  @override
  @JsonKey(ignore: true)
  _$RecipeModelCopyWith<_RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
