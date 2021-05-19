import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/core/routing/router.gr.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/slogan_section/widgets/asterisk_animation.dart';
import 'package:radity_website_clone/ui/sections/header_section/vm/header_vm.dart';
import 'package:supercharged/supercharged.dart';

class HeaderMain extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final headerVM = useProvider(headerVMProvider);

    final scrolledHeaderHeight = useResponsive<double>(largeDesktopValue: 90, phone: 70);
    final normalHeaderHeight = useResponsive<double>(largeDesktopValue: 152, phone: 106);

    final normalLogoHeight = useResponsive<double>(largeDesktopValue: 123, phone: 99);
    final scrollLogoHeight = useResponsive<double>(largeDesktopValue: 105, phone: 84.15);
    final currentRouter = AutoRouter.innerRouterOf(context, MainRoute.name);

    return Positioned(
        top:0,
        left: 0,
        right: 0,
        child: AnimatedContainer(
          duration: 0.2.seconds,
          height: headerVM.isScrolled ? scrolledHeaderHeight : normalHeaderHeight,
          decoration: BoxDecoration(
            color: headerVM.isScrolled ? context.theme.accentColor : Colors.transparent,
            boxShadow: headerVM.isScrolled ? [
            BoxShadow(
                color: context.theme.primaryColorDark.withOpacity(0.1),
                offset: Offset(0,3),
                blurRadius: 20
            )
            ] : [],
          ),

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
                    InkWell(
                      onTap: ()=>currentRouter?.push(HomeRouter()),
                      child: Container(
                        width: headerVM.isScrolled ? scrollLogoHeight : normalLogoHeight,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                headerVM.isScrolled ? "assets/png/radity_logo_dark.png" : "assets/png/radity_logo_white.png",
                            )
                          )
                        ),
                      ),
                    ),
                    IconButton(icon: Icon(
                      Icons.menu,
                      color: headerVM.isScrolled ? context.theme.primaryColor : context.theme.accentColor,
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
