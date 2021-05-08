import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/digital_journey_section/model/journey_model.dart';
import 'package:radity_website_clone/ui/shared/lang/locale_keys.g.dart';
import 'package:radity_website_clone/core/extensions/string_extensions.dart';

class JourneyInfo{

  List<JourneyModel> modelList = [
      JourneyModel("Concept & UX",
          LocaleKeys.journey_conceptAndUx,
          "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/2c/bd/2cbd10d4-8516-4c76-864a-d7722c3f7894/journey-concept.svg",
          Color(0xffEA8F07)
      ),
    JourneyModel("Design & Development",
        LocaleKeys.journey_designAndDevelopment,
        "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/35/57/35573b45-f75f-4061-8b02-f380d5f0880e/journey-design.svg",
        Color(0xff0073f7)
    ),
    JourneyModel("Launch & Operate",
        LocaleKeys.journey_launchAndOperate,
        "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/cd/f3/cdf38211-fcef-4ca2-bbbf-a2919e108383/journey-launch.svg",
        Color(0xff51a553)
    ),
    JourneyModel("Evolve & Support",
        LocaleKeys.journey_evolveAndSupport,
        "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/41/ff/41ffb127-4699-4a5b-8e7c-64ee07fec694/journey-evolve.svg",
        Color(0xff6a00f7)
    )
  ];

}

final JourneyInfoProvider = Provider((_)=> JourneyInfo());