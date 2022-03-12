import 'dart:convert';

import 'package:aaaaaa/recipemodel.dart';
import 'package:aaaaaa/recipes.dart';
import 'package:flutter/services.dart';

class RecipeDataJsonService  {
  Future<Recipes> fetchData() async {
    final response =
        await rootBundle.loadString('assets/name.JSON');

    final jsonData = await json.decode(response) as Map<String, dynamic>;

    await Future.delayed(const Duration(seconds: 1));

    final recipesData = Recipes.fromJson(jsonData);

    return recipesData;
  }
}
