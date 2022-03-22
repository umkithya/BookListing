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
import 'package:flutter/material.dart' as _i8;

import '../homescreen.dart' as _i1;
import '../page/bookpage.dart' as _i2;
import '../page/favpage.dart' as _i6;
import '../page/most_readingpage.dart' as _i5;
import '../page/popularpage.dart' as _i4;
import '../page/profilepage.dart' as _i7;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    BookRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.BooksPage());
    },
    FavoriteRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    PopularRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.PopularPage(),
          transitionsBuilder: _i3.TransitionsBuilders.noTransition,
          durationInMilliseconds: 0,
          opaque: true,
          barrierDismissible: false);
    },
    MostReadingRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<MostReadingRouteArgs>(
          orElse: () =>
              MostReadingRouteArgs(author: queryParams.optString('author')));
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: _i5.MostReadingPage(key: args.key, author: args.author),
          transitionsBuilder: _i3.TransitionsBuilders.noTransition,
          durationInMilliseconds: 0,
          opaque: true,
          barrierDismissible: false);
    },
    FavoriteRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.FavoritePage());
    },
    ProfileRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ProfilePage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomeRoute.name, path: '/', children: [
          _i3.RouteConfig(BookRouter.name,
              path: 'books',
              parent: HomeRoute.name,
              children: [
                _i3.RouteConfig('#redirect',
                    path: '',
                    parent: BookRouter.name,
                    redirectTo: 'popular',
                    fullMatch: true),
                _i3.RouteConfig(PopularRoute.name,
                    path: 'popular', parent: BookRouter.name),
                _i3.RouteConfig(MostReadingRoute.name,
                    path: 'most-reading', parent: BookRouter.name),
                _i3.RouteConfig('*#redirect',
                    path: '*',
                    parent: BookRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i3.RouteConfig(FavoriteRouter.name,
              path: 'favorite',
              parent: HomeRoute.name,
              children: [
                _i3.RouteConfig(FavoriteRoute.name,
                    path: '', parent: FavoriteRouter.name),
                _i3.RouteConfig('*#redirect',
                    path: '*',
                    parent: FavoriteRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i3.RouteConfig(ProfileRouter.name,
              path: 'profile',
              parent: HomeRoute.name,
              children: [
                _i3.RouteConfig(ProfileRoute.name,
                    path: '', parent: ProfileRouter.name),
                _i3.RouteConfig('*#redirect',
                    path: '*',
                    parent: ProfileRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.BooksPage]
class BookRouter extends _i3.PageRouteInfo<void> {
  const BookRouter({List<_i3.PageRouteInfo>? children})
      : super(BookRouter.name, path: 'books', initialChildren: children);

  static const String name = 'BookRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class FavoriteRouter extends _i3.PageRouteInfo<void> {
  const FavoriteRouter({List<_i3.PageRouteInfo>? children})
      : super(FavoriteRouter.name, path: 'favorite', initialChildren: children);

  static const String name = 'FavoriteRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class ProfileRouter extends _i3.PageRouteInfo<void> {
  const ProfileRouter({List<_i3.PageRouteInfo>? children})
      : super(ProfileRouter.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i4.PopularPage]
class PopularRoute extends _i3.PageRouteInfo<void> {
  const PopularRoute() : super(PopularRoute.name, path: 'popular');

  static const String name = 'PopularRoute';
}

/// generated route for
/// [_i5.MostReadingPage]
class MostReadingRoute extends _i3.PageRouteInfo<MostReadingRouteArgs> {
  MostReadingRoute({_i8.Key? key, String? author})
      : super(MostReadingRoute.name,
            path: 'most-reading',
            args: MostReadingRouteArgs(key: key, author: author),
            rawQueryParams: {'author': author});

  static const String name = 'MostReadingRoute';
}

class MostReadingRouteArgs {
  const MostReadingRouteArgs({this.key, this.author});

  final _i8.Key? key;

  final String? author;

  @override
  String toString() {
    return 'MostReadingRouteArgs{key: $key, author: $author}';
  }
}

/// generated route for
/// [_i6.FavoritePage]
class FavoriteRoute extends _i3.PageRouteInfo<void> {
  const FavoriteRoute() : super(FavoriteRoute.name, path: '');

  static const String name = 'FavoriteRoute';
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i3.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}
