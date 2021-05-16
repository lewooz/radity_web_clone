import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/ui/pages/services_page/sections/services_all_service_items/services_all_service_items_main.dart';
import 'package:radity_website_clone/ui/pages/services_page/sections/services_slogan_section/services_slogan_section_main.dart';
import 'package:radity_website_clone/ui/sections/footer_section/footer_section_main.dart';
import 'package:radity_website_clone/ui/shared/widgets/custom_scrollbar.dart';

class ServicesPageMain extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    return CustomScrollbar(
      scrollController: scrollController,
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            ServicesSloganSectionMain(),
            ServicesAllServiceItemsMain(),
            FooterSectionMain(),
          ],
        ),
      ),
    );
  }
}
