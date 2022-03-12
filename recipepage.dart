import 'package:aaaaaa/recipeDataJsonService.dart';
import 'package:aaaaaa/recipemodel.dart';
import 'package:aaaaaa/recipes.dart';
import 'package:aaaaaa/recipesteps.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class RecipePage extends StatefulWidget {
  final int recipeID;

  const RecipePage({Key? key, @PathParam('recipeID') required this.recipeID}) : super(key: key);

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recipe"),
      backgroundColor: Colors.black87),
      body: FutureBuilder(
        future: RecipeDataJsonService().fetchData(),
    builder: (context, AsyncSnapshot<Recipes> snapshot) {
      if (!snapshot.hasData) {
        /// CRITICAL POINT
        return CircularProgressIndicator();
      };
      var recipe=getRecipe(widget.recipeID, snapshot.data!.recipes);
          return
            Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RecipeSteps(
                    recipeSteps: recipe.recipeSteps, recipeImage: recipe.recipeImage, recipeIng: recipe.recipeIng,)

            ]),

       // itemCount: 1
        //snapshot.data!.recipes[widget.recipeID].recipeSteps.length, // This is for when i fix the issue of repeating steps
      );
    },
      ),
    );
  }
  RecipeModel getRecipe(int recipeID, List<RecipeModel> recipes){
    return recipes.firstWhere((element) => element.id==recipeID);
  }
}


/*
Text(snapshot.data!.recipes[widget.recipeID].recipeName),
Text(snapshot.data!.recipes[widget.recipeID].stepOne),*/
