import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/ui/shared/widgets/custom_scrollbar.dart';

class AboutUsPageMain extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    return CustomScrollbar(
      scrollController: scrollController,
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
