
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/ui/overlays/drawer_menu_overlay/drawer_menu_contents.dart';
import 'package:radity_website_clone/ui/sections/header_section/vm/header_vm.dart';
import 'package:supercharged/supercharged.dart';
import 'package:radity_website_clone/core/extensions/color_scheme_extension.dart';

class DrawerMenuMain extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final headerVM = useProvider(headerVMProvider);

    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: IgnorePointer(
        ignoring: !headerVM.isDrawerOpen,
        child: AnimatedOpacity(
          duration: 300.milliseconds,
          opacity: headerVM.isDrawerOpen ? 1 : 0,
          child: Container(
            height: context.height,
            color: theme.colorScheme.black.withOpacity(0.7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () => context.read(headerVMProvider).toggleDrawer(),
                    child: SizedBox.expand(),
                  ),
                ),
                DrawerMenuContents()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
