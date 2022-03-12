//import 'dart:js';
//import 'dart:js';
//import 'dart:html';
import 'dart:convert';
import 'dart:core';
import 'dart:async' show Future;
//import 'dart:js';
import 'package:aaaaaa/recipeDataJsonService.dart';
import 'package:aaaaaa/recipes.dart';
import 'package:aaaaaa/routes/router.gr.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show SystemNavigator, rootBundle;
// import 'package:flutter_builder/jsonrecipe.dart' as generated;
import 'package:aaaaaa/routes/router.dart';
import 'dart:ui';


final AppRouter _appRouter = AppRouter();

void main() => runApp(MaterialApp.router(
  title: 'Cooking app',
      color: Colors.white,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      /* home: const Home(),
       routes: <String, WidgetBuilder>{
        '/RecipePage': (context) => JsonRecipe(),
        '/SourcePage': (context) => const SourceCode(),
        '/RecipePage1' : (context) => RecipePage(), */
),
    );

//homepage
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'CookingBuddy'),
        leading: IconButton(
          onPressed: () {SystemNavigator.pop();},
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
            child: Image.asset('assets/cheffhat.jpg'),),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            child: MaterialButton(
                onPressed: () {
                 context.router.push(const JsonRecipeRoute());
                },
                minWidth: 200.0,
                height: 95,
                color: Colors.white,
                child: const Text(
                  'Recipes',
                  style: TextStyle(fontSize: 40,
               //  shadows:[ Shadow(color: Colors.black26, offset: Offset(2, 2), blurRadius: 5), ]
                  ),
                ),
                textColor: Colors.black87,
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white60),
                    borderRadius: BorderRadius.circular(15))),
          ),
        ],
      ),
    );
  }
}

//Recipe Page
/*class RecipePage extends StatelessWidget {
  RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(
          'Recipes',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.white,
        ),

      ),
      centerTitle: true,
        backgroundColor: Colors.black54,
      ),



      body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: MaterialButton(
                  onPressed: () {},
                minWidth: 400.0,
                height: 95,
                color: Colors.black87,
                child: Text('recipe temp', style: const TextStyle(fontSize: 30),),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(side: const BorderSide(),
                    borderRadius: BorderRadius.circular(30)
                ,
              ),
              ),
            ),
    );
          }
  }*/

//source code
class SourceCode extends StatelessWidget {
  const SourceCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Source Code',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: const Center(
        child: Text(
          'Sample Text',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }
}

//recipe page json included
 /*class Recipes extends StatefulWidget {
  const Recipes({Key? key}) : super(key: key);
  @override
  _RecipesState createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  late List<Name> _name;
  Future<Type> fetchTitle() async {
    var url = Uri.parse('https://raw.githubusercontent.com/httpwhy/cookingapp/main/namedata.json?token=GHSAT0AAAAAABQFPH6JU2HY4KOPLWAD2G52YPEKG7A');
    http.Response response = await http.get(url);

    var names = <Name>[];

    if (response.statusCode == 200) {
      var namesJson = json.decode(response.body);
      for (var nameJson in namesJson) {
        names.add(Name.fromJson(nameJson));
      }
    }
    return Title;

  }
  @override
  void initState() {
    fetchTitle().then((value) {
      setState(() {
        _name.addAll.toString();
      });
    });
    super.initState();
    _name().whenComplete(() {
      setState(() {
      });
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imported Recipes'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MaterialButton(
            onPressed: () {},
            child: Column(
              children: <Widget>[Text(_name[index].title)],
            ),
          );
        },
        itemCount: _name.length,
      ),
    );
  }
}
*/

class JsonRecipePage extends StatefulWidget {
  const JsonRecipePage({Key? key}) : super(key: key);

  @override
  _JsonRecipePageState createState() => _JsonRecipePageState();
}

class _JsonRecipePageState extends State<JsonRecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Recipes'),
      backgroundColor: Colors.black87,),
      body: Container(
        child: Center(
          child: FutureBuilder(
          future: RecipeDataJsonService().fetchData(),
            builder: (context, AsyncSnapshot<Recipes> snapshot) {
            if(!snapshot.hasData) {
              /// CRITICAL POINT
              return CircularProgressIndicator();
            };
         //   var showData=json.decode(snapshot.data.toString());
              print(snapshot.data);
            return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                const EdgeInsets.fromLTRB(10.0, 10.0, 10, 0),
                child: MaterialButton(
                  onPressed: () {
                  context.router.push(RecipeRoute(recipeID: snapshot.data!.recipes[index].id));
                  },
                  minWidth: 200.0,
                  height: 70,
                  color: Colors.white,
                  child: Text(
                      (snapshot.data!.recipes[index].recipeName),
                    style: TextStyle(fontSize: 25,
                    color: Colors.black87),
                  ),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white60),
                      borderRadius: BorderRadius.circular(15)),
                ),
              );
            },
            itemCount: snapshot.data == null ? 0 : snapshot.data?.recipes.length,
            );
          },
          ),
        ),
      ),
    );
  }
}




// class RecipePage extends StatefulWidget {
//   const RecipePage({Key? key, required @PathParam('recipeID') this.recipeID}) : super(key: key);
//   final int recipeID;
//
//   @override
//   _RecipePageState createState() => _RecipePageState();
// }
//
// class _RecipePageState extends State<RecipePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }



/* class JsonRecipePage extends StatefulWidget {
  const JsonRecipePage({Key? key}) : super(key: key);

  @override
  _JsonRecipePageState createState() => _JsonRecipePageState();
}

class _JsonRecipePageState extends State<JsonRecipePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('recipe'),),
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('assets/name.JSON'),
    builder: (context, snapshot) {
    if(!snapshot.hasData) {
    /// CRITICAL POINT
    return CircularProgressIndicator();
    };
    var showData=json.decode(snapshot.data.toString());
    print(showData);
    return ListView.builder(
    itemBuilder: (BuildContext context, int index) {
    return Center(
    child: Text(
    (showData[index]['pageName']),
    style: TextStyle(fontSize: 50.0),
    ),
    );

    }
    );

    }),);
  }
  } */

/*class jsonRecipePage extends StatelessWidget {
  const jsonRecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Json data'),) ,
      body: generated.GeneratedWidget(),
    );
  }
}  */
