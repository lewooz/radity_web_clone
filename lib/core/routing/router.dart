import 'package:auto_route/annotations.dart';
import 'package:radity_website_clone/main_page.dart';
import 'package:radity_website_clone/ui/pages/home_page/home_page_main.dart';
import 'package:radity_website_clone/ui/pages/second_page/third_page_main.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
        path: "/",
      page: MainPage,
      children: [
        AutoRoute(path: "home", page: HomePageMain, initial: true),
        AutoRoute(path: "about-us", page: ThirdPageMain),
        RedirectRoute(path: '*', redirectTo: ''),
      ]
    ),
  ],
)
class $AppRouter {}