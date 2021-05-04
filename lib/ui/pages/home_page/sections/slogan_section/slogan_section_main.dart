import 'package:flutter/material.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/slogan_section/widgets/gradient_circle_list.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/slogan_section/widgets/references.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/slogan_section/widgets/slogan_container.dart';
import 'package:radity_website_clone/ui/shared/widgets/main_gradient_container.dart';

class SloganSectionMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainGradientContainer(
        child: Stack(
          alignment: Alignment.center,
          children: renderGradientCircleList(context) +
              [
               SloganContainer(),
              ],
        ));
  }
}
