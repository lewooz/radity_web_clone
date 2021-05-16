import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/careers_page/info_provider/careers_info_provider.dart';
import 'package:radity_website_clone/ui/shared/widgets/slogan_section_main.dart';

class CareersSloganSectionMain extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final infoProvider = useProvider(CareersInfoProvider);

    return SloganSectionMain(backgroundImage: infoProvider.backgroundImage, title: "Careers", paragraph: infoProvider.sloganParagraph, text: infoProvider.sloganText, isCareersPage: true,);
  }
}
