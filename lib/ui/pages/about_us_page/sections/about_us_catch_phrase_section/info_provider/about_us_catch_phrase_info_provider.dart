import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/journal_section/model/journal_model.dart';


class AboutUsCatchPhraseInfo {

  List<String> factsList = [
    "Legal Form: Swiss GmbH registered in Zürich",
    "Company Foundation: 2008",
    "UID: CHE-114.548.842"
  ];
  List<String> partnersAndMemberships = [
    "Microsoft Azure",
    "Swiss Finance+Technology Association",
    "Cryptovalley",
    "Swiss Made Software",
    "Divio Cloud",
  ];

  String quote = """Our approach is what you would expect from a true partner: Personal and dedicated service.\n With a strong emphasis on "value", "success" and "collaboration".\n- Özgür Aksakal, Partner Radity""";

}

final AboutUsCatchPhraseInfoProvider = Provider((_) => AboutUsCatchPhraseInfo());
