import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/services_page/sections/services_slogan_section/info_provider/services_slogan_info_provider.dart';
import 'package:radity_website_clone/ui/shared/widgets/slogan_section_main.dart';

class ServicesSloganSectionMain extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final infoProvider = useProvider(ServicesSloganInfoProvider);

    return SloganSectionMain(backgroundImage: infoProvider.backgroundImage, title: "Services", paragraph: infoProvider.sloganParagraph);
  }
}
