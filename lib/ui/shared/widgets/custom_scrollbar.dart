import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/sections/header_section/vm/header_vm.dart';

class CustomScrollbar extends HookWidget {
  final Widget child;
  final ScrollController scrollController;

  CustomScrollbar({required this.child, required this.scrollController});

  @override
  Widget build(BuildContext context) {

    useEffect(() {
      scrollController.addListener(() {
        context.read(headerVMProvider).setScrollStatus(scrollController.offset > 20 ? true : false);
      });
    }, []);

    return RawScrollbar(
      controller: scrollController,
      isAlwaysShown: true,
      thumbColor: Colors.grey.shade200,
      thickness: useResponsive(largeDesktopValue: 8, phone: 5),
      radius: Radius.circular(10),
      child: child,
    );
  }
}
