// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../main.dart' as _i1;
import '../recipepage.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    JsonRecipeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.JsonRecipePage());
    },
    RecipeRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RecipeRouteArgs>(
          orElse: () =>
              RecipeRouteArgs(recipeID: pathParams.getInt('recipeID')));
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.RecipePage(key: args.key, recipeID: args.recipeID));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomeRoute.name, path: '/'),
        _i3.RouteConfig(JsonRecipeRoute.name, path: 'json-recipe'),
        _i3.RouteConfig(RecipeRoute.name, path: 'recipe-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.JsonRecipePage]
class JsonRecipeRoute extends _i3.PageRouteInfo<void> {
  const JsonRecipeRoute() : super(JsonRecipeRoute.name, path: 'json-recipe');

  static const String name = 'JsonRecipeRoute';
}

/// generated route for
/// [_i2.RecipePage]
class RecipeRoute extends _i3.PageRouteInfo<RecipeRouteArgs> {
  RecipeRoute({_i4.Key? key, required int recipeID})
      : super(RecipeRoute.name,
            path: 'recipe-page',
            args: RecipeRouteArgs(key: key, recipeID: recipeID),
            rawPathParams: {'recipeID': recipeID});

  static const String name = 'RecipeRoute';
}

class RecipeRouteArgs {
  const RecipeRouteArgs({this.key, required this.recipeID});

  final _i4.Key? key;

  final int recipeID;

  @override
  String toString() {
    return 'RecipeRouteArgs{key: $key, recipeID: $recipeID}';
  }
}
