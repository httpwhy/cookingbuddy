import 'package:aaaaaa/recipemodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipes.freezed.dart';
part 'recipes.g.dart';

@freezed
class Recipes with _$Recipes{
// final  int id;
  //final String recipeName;

  const factory Recipes(@JsonKey(name: 'recipes') List<RecipeModel> recipes) =_Recipes;
 factory Recipes.fromJson(Map<String, dynamic> json) => _$RecipesFromJson(json);

}

