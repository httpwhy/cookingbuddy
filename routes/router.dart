import 'package:aaaaaa/main.dart';
import 'package:auto_route/auto_route.dart';

import '../recipepage.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(path: "json-recipe",page: JsonRecipePage,),
    AutoRoute(path: "recipe-page",page: RecipePage,),
  ],)
class $AppRouter {}