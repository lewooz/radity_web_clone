import 'package:auto_route/annotations.dart';
import 'package:radity_website_clone/main_page.dart';
import 'package:radity_website_clone/ui/pages/about_us_page/about_us_page_main.dart';
import 'package:radity_website_clone/ui/pages/careers_page/careers_page_main.dart';
import 'package:radity_website_clone/ui/pages/case_studies_page/case_studies_main.dart';
import 'package:radity_website_clone/ui/pages/home_page/home_page_main.dart';
import 'package:radity_website_clone/ui/pages/services_page/services_page_main.dart';


@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
        path: "/",
      page: MainPage,
      children: [
        AutoRoute(path: "home", page: HomePageMain, initial: true, name: "HomeRouter"),
        AutoRoute(path: "about-us", page: AboutUsPageMain,name: "AboutUsRouter"),
        AutoRoute(path: "services", page: ServicesPageMain,name: "ServicesRouter"),
        AutoRoute(path: "case-studies", page: CaseStudiesPageMain,name: "CaseStudiesRouter"),
        AutoRoute(path: "careers", page: CareersPageMain,name: "CareersRouter"),
        RedirectRoute(path: '*', redirectTo: ''),
      ]
    ),
  ],
)
class $AppRouter {}