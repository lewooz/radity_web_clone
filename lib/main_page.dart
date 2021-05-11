import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/ui/overlays/drawer_menu_overlay/drawer_menu_overlay.dart';
import 'package:radity_website_clone/ui/overlays/logo_overlay/logo_overlay.dart';
import 'package:radity_website_clone/ui/pages/home_page/vm/homepage_vm.dart';
import 'package:radity_website_clone/ui/sections/footer_section/footer_section_main.dart';
import 'package:radity_website_clone/ui/sections/header_section/header_main.dart';


class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    mainPageOnOutsideClick(){
      FocusScopeNode currentFocus = FocusScope.of(context);
      if(!currentFocus.hasPrimaryFocus){
        context.read(HomePageVMProvider).setSloganTooltipVisibility(false);
      }
    }

    return Scaffold(
      backgroundColor: context.theme.accentColor,
      body: GestureDetector(
        onTap: ()=>mainPageOnOutsideClick(),
        child: Stack(
          children: [
            AutoRouter(),
            HeaderMain(),
            LogoOverlay(),
            DrawerMenuMain(),
          ],
        ),
      ),
    );
  }
}
