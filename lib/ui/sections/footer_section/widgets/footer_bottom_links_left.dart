import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:radity_website_clone/core/constants/application_constants.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/ui/shared/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterBottomLinksLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    launchLink(String link) async {
      await launch(link);
    }

    _buildIconRow() {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: ()=> launchLink(ApplicationConstants.RADITY_LINKEDIN),
              child: Icon(
                AntDesign.linkedin_square,
                size: 20,
                color: context.theme.accentColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: ()=> launchLink(ApplicationConstants.RADITY_TWITTER),
                child: Icon(
                  AntDesign.twitter,
                  size: 20,
                  color: context.theme.accentColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: ()=> launchLink(ApplicationConstants.RADITY_YOUTUBE),
                child: Icon(
                  AntDesign.youtube,
                  size: 20,
                  color: context.theme.accentColor,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/png/radity_logo_white.png",
          width: 122,
        ),
        _buildIconRow(),
        CustomButton(
          text: "Contact Us",
          onPressed: () {},
          backgroundColor: context.theme.colorScheme.fruitSalad,
          textColor: context.theme.accentColor,
          fontSize: 14,
          fontWeight: FontWeight.w900,
          iconData: Icons.mail_outline,
          borderWidth: 2,
          borderColor: context.theme.colorScheme.fruitSalad,
          isReversed: true,
          height: 46,
        )
      ],
    );
  }
}
