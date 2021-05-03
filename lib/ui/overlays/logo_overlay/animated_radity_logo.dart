import 'package:flutter/material.dart';
import 'package:radity_website_clone/ui/overlays/logo_overlay/animated_logo_line.dart';
import 'package:radity_website_clone/ui/overlays/logo_overlay/animated_radity_text.dart';
import 'package:websafe_svg/websafe_svg.dart';

class AnimatedRadityLogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Wrap(
            direction: Axis.vertical,
            spacing: 5,
            children: List.generate(6, (index) =>
            AnimatedLogoLine(index)
            ),
          ),
          AnimatedRadityText()
        ],
      ),
    );
  }


}
