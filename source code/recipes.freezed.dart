// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Recipes _$RecipesFromJson(Map<String, dynamic> json) {
  return _Recipes.fromJson(json);
}

/// @nodoc
class _$RecipesTearOff {
  const _$RecipesTearOff();

  _Recipes call(@JsonKey(name: 'recipes') List<RecipeModel> recipes) {
    return _Recipes(
      recipes,
    );
  }

  Recipes fromJson(Map<String, Object?> json) {
    return Recipes.fromJson(json);
  }
}

/// @nodoc
const $Recipes = _$RecipesTearOff();

/// @nodoc
mixin _$Recipes {
  @JsonKey(name: 'recipes')
  List<RecipeModel> get recipes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipesCopyWith<Recipes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesCopyWith<$Res> {
  factory $RecipesCopyWith(Recipes value, $Res Function(Recipes) then) =
      _$RecipesCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'recipes') List<RecipeModel> recipes});
}

/// @nodoc
class _$RecipesCopyWithImpl<$Res> implements $RecipesCopyWith<$Res> {
  _$RecipesCopyWithImpl(this._value, this._then);

  final Recipes _value;
  // ignore: unused_field
  final $Res Function(Recipes) _then;

  @override
  $Res call({
    Object? recipes = freezed,
  }) {
    return _then(_value.copyWith(
      recipes: recipes == freezed
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeModel>,
    ));
  }
}

/// @nodoc
abstract class _$RecipesCopyWith<$Res> implements $RecipesCopyWith<$Res> {
  factory _$RecipesCopyWith(_Recipes value, $Res Function(_Recipes) then) =
      __$RecipesCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'recipes') List<RecipeModel> recipes});
}

/// @nodoc
class __$RecipesCopyWithImpl<$Res> extends _$RecipesCopyWithImpl<$Res>
    implements _$RecipesCopyWith<$Res> {
  __$RecipesCopyWithImpl(_Recipes _value, $Res Function(_Recipes) _then)
      : super(_value, (v) => _then(v as _Recipes));

  @override
  _Recipes get _value => super._value as _Recipes;

  @override
  $Res call({
    Object? recipes = freezed,
  }) {
    return _then(_Recipes(
      recipes == freezed
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Recipes implements _Recipes {
  const _$_Recipes(@JsonKey(name: 'recipes') this.recipes);

  factory _$_Recipes.fromJson(Map<String, dynamic> json) =>
      _$$_RecipesFromJson(json);

  @override
  @JsonKey(name: 'recipes')
  final List<RecipeModel> recipes;

  @override
  String toString() {
    return 'Recipes(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Recipes &&
            const DeepCollectionEquality().equals(other.recipes, recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(recipes));

  @JsonKey(ignore: true)
  @override
  _$RecipesCopyWith<_Recipes> get copyWith =>
      __$RecipesCopyWithImpl<_Recipes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipesToJson(this);
  }
}

abstract class _Recipes implements Recipes {
  const factory _Recipes(@JsonKey(name: 'recipes') List<RecipeModel> recipes) =
      _$_Recipes;

  factory _Recipes.fromJson(Map<String, dynamic> json) = _$_Recipes.fromJson;

  @override
  @JsonKey(name: 'recipes')
  List<RecipeModel> get recipes;
  @override
  @JsonKey(ignore: true)
  _$RecipesCopyWith<_Recipes> get copyWith =>
      throw _privateConstructorUsedError;
}
