import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled9/views/app_view.dart';
import 'package:untitled9/views/characters_virew/characters_view.dart';
import 'package:untitled9/views/favourites_view.dart';
import 'package:untitled9/views/locations_view.dart';
import 'package:untitled9/views/sections_view.dart';

final routerKey = GlobalKey<NavigatorState>();

class AppRoutes {
  AppRoutes._();

  static const String characters = '/';
  static const String favourites = '/favourites';
  static const String locations = '/locations';
  static const String sections = '/sections';


}

final router = GoRouter(
    navigatorKey: routerKey,
    initialLocation: AppRoutes.characters,
    routes: [

  StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => AppView(
            navigationShell: navigationShell,
          ),
      branches: [
        StatefulShellBranch( routes: [
          GoRoute(
            path: AppRoutes.characters,
            builder: (context, state) => CharactersView(),
          ),
        ]),
        StatefulShellBranch( routes: [
          GoRoute(
            path: AppRoutes.favourites,
            builder: (context, state) => FavouritesView(),
          ),
        ]),
        StatefulShellBranch( routes: [
          GoRoute(
            path: AppRoutes.locations,
            builder: (context, state) => LocationsView(),
          ),
        ]),
        StatefulShellBranch( routes: [
          GoRoute(
            path: AppRoutes.sections,
            builder: (context, state) => SectionsView(),
          ),
        ]),

      ])
]);
