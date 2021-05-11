import 'package:flutter/material.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';

class FooterLeftContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(right: 30, bottom: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact Us",
            style: context.textTheme.headline4!.copyWith(color: context.theme.accentColor, height: 1.75, letterSpacing: -0.4),
          ),
          ConstrainedBox(constraints: BoxConstraints(
            maxWidth: 370
          ),
            child: Text(
              "Design, Development or Operations. Let's make it happen.\nSend us your no-obligation inquiry.",
              style: context.textTheme.subtitle1!.copyWith(color: context.theme.accentColor, letterSpacing: -0.2, height: 1.67),
            ),
          )
        ],
      ),
    );
  }
}
