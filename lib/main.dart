import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/constants/application_constants.dart';
import 'package:radity_website_clone/ui/shared/lang/locale_manager.dart';
import 'package:radity_website_clone/ui/shared/utils/theme.dart';

import 'core/routing/router.gr.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final container = ProviderContainer();
  runApp(ProviderScope(
      child: EasyLocalization(
          path: ApplicationConstants.LANGUAGE_PATH,
          supportedLocales: container.read(localeProvider).supportedLocales,
          fallbackLocale: container.read(localeProvider).supportedLocales[0],
          child: MyApp())));
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: () => Portal(
          child: MaterialApp.router(
              title: 'Radity',
              theme: Styles.customThemeData(context),
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              routeInformationParser: _appRouter.defaultRouteParser(),
              routerDelegate: _appRouter.delegate(),
              debugShowCheckedModeBanner: false,

          ),
        ));
  }
}





