// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:radity_website_clone/main_page.dart' as _i3;
import 'package:radity_website_clone/ui/pages/home_page/home_page_main.dart'
    as _i4;
import 'package:radity_website_clone/ui/pages/second_page/third_page_main.dart'
    as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i1.AdaptivePage<dynamic>(
          routeData: routeData, child: _i3.MainPage());
    },
    HomeRouteMain.name: (routeData) {
      return _i1.AdaptivePage<dynamic>(
          routeData: routeData, child: _i4.HomePageMain());
    },
    ThirdRouteMain.name: (routeData) {
      return _i1.AdaptivePage<dynamic>(
          routeData: routeData, child: _i5.ThirdPageMain());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(MainRoute.name, path: '/', children: [
          _i1.RouteConfig('#redirect',
              path: '', redirectTo: 'home', fullMatch: true),
          _i1.RouteConfig(HomeRouteMain.name, path: 'home'),
          _i1.RouteConfig(ThirdRouteMain.name, path: 'third'),
          _i1.RouteConfig('*#redirect',
              path: '*', redirectTo: '', fullMatch: true)
        ])
      ];
}

class MainRoute extends _i1.PageRouteInfo {
  const MainRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', children: children);

  static const String name = 'MainRoute';
}

class HomeRouteMain extends _i1.PageRouteInfo {
  const HomeRouteMain() : super(name, path: 'home');

  static const String name = 'HomeRouteMain';
}

class ThirdRouteMain extends _i1.PageRouteInfo {
  const ThirdRouteMain() : super(name, path: 'third');

  static const String name = 'ThirdRouteMain';
}
