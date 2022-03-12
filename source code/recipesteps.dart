import 'package:aaaaaa/recipeDataJsonService.dart';
import 'package:aaaaaa/recipes.dart';
import 'package:flutter/material.dart';

class RecipeSteps extends StatefulWidget {
  final List<String> recipeSteps;

  final String recipeImage;
  final List<String> recipeIng;
  final List<bool> checklistState = <bool>[];

  RecipeSteps({Key? key, required this.recipeSteps, required this.recipeImage, required this.recipeIng}) : super(key: key){
    for (var i = 0; i < recipeIng.length; i++){
       checklistState.add(false);
    }
  }

  @override
  State<RecipeSteps> createState() => _RecipeStepsState();
}

class _RecipeStepsState extends State<RecipeSteps> {
  @override
  Widget build(BuildContext context) {
    final widgetList = <Widget>[];

    for (final recipeStep in widget.recipeSteps) {
      widgetList.add(
        Align(
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
        /*      const Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                child: Text('step:',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20
                ),),
              ),*/
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1.0),
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    recipeStep,
                    style: const TextStyle(fontSize: 20.0),
                  ),
                )),
              ),
            ],
          ),
        ),
      );
    }


    return Expanded( child: SingleChildScrollView(
      child: Column(children: <Widget>[

        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
              color: Colors.white30,
              height: 300,
              width: 400,
              child: FutureBuilder(
    future: RecipeDataJsonService().fetchData(),
    builder: (context, AsyncSnapshot<Recipes> snapshot) {
    if(!snapshot.hasData) {
    /// CRITICAL POINT
    return CircularProgressIndicator();
    }
              return Image.network(widget.recipeImage,
                fit: BoxFit.cover,
              );}),)
    ),
       buildRecipeIngChecklist(),
        ...widgetList,
        ])));
  }

  Row buildRecipeIngChecklist() {
    return Row(children: [
      Expanded( child : ListView.builder(
        shrinkWrap: true,
              itemCount: widget.recipeIng.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.black87,
                      value: widget.checklistState[index],
                      onChanged: (bool? value) {
                       setState(() {
                         widget.checklistState[index] = value!;
                       });
                      },
                    ),
                    Text(widget.recipeIng[index])
                  ],
                );
              }))
      ]);
    // can be repeated w recipe
  }
}
