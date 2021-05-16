// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:radity_website_clone/main_page.dart' as _i3;
import 'package:radity_website_clone/ui/pages/about_us_page/about_us_page_main.dart'
    as _i5;
import 'package:radity_website_clone/ui/pages/careers_page/careers_page_main.dart'
    as _i8;
import 'package:radity_website_clone/ui/pages/case_studies_page/case_studies_main.dart'
    as _i7;
import 'package:radity_website_clone/ui/pages/home_page/home_page_main.dart'
    as _i4;
import 'package:radity_website_clone/ui/pages/services_page/services_page_main.dart'
    as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i1.AdaptivePage<dynamic>(
          routeData: routeData, child: _i3.MainPage());
    },
    HomeRouter.name: (routeData) {
      return _i1.AdaptivePage<dynamic>(
          routeData: routeData, child: _i4.HomePageMain());
    },
    AboutUsRouter.name: (routeData) {
      return _i1.AdaptivePage<dynamic>(
          routeData: routeData, child: _i5.AboutUsPageMain());
    },
    ServicesRouter.name: (routeData) {
      return _i1.AdaptivePage<dynamic>(
          routeData: routeData, child: _i6.ServicesPageMain());
    },
    CaseStudiesRouter.name: (routeData) {
      return _i1.AdaptivePage<dynamic>(
          routeData: routeData, child: _i7.CaseStudiesPageMain());
    },
    CareersRouter.name: (routeData) {
      return _i1.AdaptivePage<dynamic>(
          routeData: routeData, child: _i8.CareersPageMain());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(MainRoute.name, path: '/', children: [
          _i1.RouteConfig('#redirect',
              path: '', redirectTo: 'home', fullMatch: true),
          _i1.RouteConfig(HomeRouter.name, path: 'home'),
          _i1.RouteConfig(AboutUsRouter.name, path: 'about-us'),
          _i1.RouteConfig(ServicesRouter.name, path: 'services'),
          _i1.RouteConfig(CaseStudiesRouter.name, path: 'case-studies'),
          _i1.RouteConfig(CareersRouter.name, path: 'careers'),
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

class HomeRouter extends _i1.PageRouteInfo {
  const HomeRouter() : super(name, path: 'home');

  static const String name = 'HomeRouter';
}

class AboutUsRouter extends _i1.PageRouteInfo {
  const AboutUsRouter() : super(name, path: 'about-us');

  static const String name = 'AboutUsRouter';
}

class ServicesRouter extends _i1.PageRouteInfo {
  const ServicesRouter() : super(name, path: 'services');

  static const String name = 'ServicesRouter';
}

class CaseStudiesRouter extends _i1.PageRouteInfo {
  const CaseStudiesRouter() : super(name, path: 'case-studies');

  static const String name = 'CaseStudiesRouter';
}

class CareersRouter extends _i1.PageRouteInfo {
  const CareersRouter() : super(name, path: 'careers');

  static const String name = 'CareersRouter';
}
