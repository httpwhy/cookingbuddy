// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Recipes _$$_RecipesFromJson(Map<String, dynamic> json) => _$_Recipes(
      (json['recipes'] as List<dynamic>)
          .map((e) => RecipeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecipesToJson(_$_Recipes instance) =>
    <String, dynamic>{
      'recipes': instance.recipes,
    };
