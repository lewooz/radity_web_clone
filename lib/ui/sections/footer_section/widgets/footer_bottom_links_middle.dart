import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:radity_website_clone/ui/sections/footer_section/info_provider/footer_link_info_provider.dart';
import 'package:radity_website_clone/ui/sections/footer_section/widgets/footer_link_text.dart';

class FooterBottomLinksMiddle extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final columnList = useProvider(FooterLinkInfoProvider).firstColumnList;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: columnList.map((model) => FooterLinkText(model)).toList(),
    );
  }
}
