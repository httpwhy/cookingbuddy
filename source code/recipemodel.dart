import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipemodel.freezed.dart';
part 'recipemodel.g.dart';

@freezed
class RecipeModel with _$RecipeModel{

   factory RecipeModel(int id, String recipeName, String recipeImage, List<String> recipeIng, List<String> recipeSteps) =_RecipeModel;
 factory RecipeModel.fromJson(Map<String, dynamic> json) => _$RecipeModelFromJson(json);
}

