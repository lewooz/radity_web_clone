import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class LocaleManager{
  final enLocale = Locale('en');
  final deLocale = Locale('de');

  List<Locale> get supportedLocales => [enLocale,deLocale];
}

final localeProvider = Provider((_) => LocaleManager());

