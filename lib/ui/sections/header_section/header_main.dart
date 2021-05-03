import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/slogan_section/widgets/asterisk_animation.dart';
import 'package:radity_website_clone/ui/sections/header_section/vm/header_vm.dart';
import 'package:supercharged/supercharged.dart';

class HeaderMain extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final headerVM = useProvider(headerVMProvider);

    return Positioned(
        top:0,
        left: 0,
        right: 0,
        child: AnimatedContainer(
          duration: 0.2.seconds,
          height: headerVM.isScrolled ? 90 : 152,
          color: headerVM.isScrolled ? theme.accentColor : Colors.transparent,
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 1230,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: headerVM.isScrolled ? 105 : 125,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              headerVM.isScrolled ? "assets/png/radity_logo_dark.png" : "assets/png/radity_logo_white.png"
                          )
                        )
                      ),
                    ),
                    IconButton(icon: Icon(
                      Icons.menu,
                      color: headerVM.isScrolled ? theme.primaryColor : theme.accentColor,
                      size: 30,
                    ), onPressed: () => headerVM.toggleDrawer())
                  ],
                ),
              )
            ),
          ),
        ));
  }
}
