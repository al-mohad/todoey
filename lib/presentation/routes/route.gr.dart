// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../screens/auth_screen/auth_screen.dart' as _i2;
import '../screens/notes_screen/notes_screen.dart' as _i3;
import '../screens/splash_screen/splash_screen.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    AuthRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AuthScreen());
    },
    NotesRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.NotesScreen());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashRoute.name, path: '/'),
        _i4.RouteConfig(AuthRoute.name, path: '/auth-screen'),
        _i4.RouteConfig(NotesRoute.name, path: '/notes-screen')
      ];
}

/// generated route for [_i1.SplashScreen]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.AuthScreen]
class AuthRoute extends _i4.PageRouteInfo<void> {
  const AuthRoute() : super(name, path: '/auth-screen');

  static const String name = 'AuthRoute';
}

/// generated route for [_i3.NotesScreen]
class NotesRoute extends _i4.PageRouteInfo<void> {
  const NotesRoute() : super(name, path: '/notes-screen');

  static const String name = 'NotesRoute';
}
