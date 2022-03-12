// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeModel _$$_RecipeModelFromJson(Map<String, dynamic> json) =>
    _$_RecipeModel(
      json['id'] as int,
      json['recipeName'] as String,
      json['recipeImage'] as String,
      (json['recipeIng'] as List<dynamic>).map((e) => e as String).toList(),
      (json['recipeSteps'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_RecipeModelToJson(_$_RecipeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recipeName': instance.recipeName,
      'recipeImage': instance.recipeImage,
      'recipeIng': instance.recipeIng,
      'recipeSteps': instance.recipeSteps,
    };
