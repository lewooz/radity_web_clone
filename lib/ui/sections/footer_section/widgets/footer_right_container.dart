import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/sections/footer_section/widgets/contact_textfield.dart';

class FooterRightContainer extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      children: [
        FractionallySizedBox(
          widthFactor: useResponsive(largeDesktopValue: 0.5, tablet: 1),
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flex(
                  direction: useResponsive(largeDesktopValue: Axis.horizontal, phone: Axis.vertical),
                  mainAxisSize: useResponsive(largeDesktopValue: MainAxisSize.max, phone: MainAxisSize.min),
                  children: [
                    Flexible(child: ContactTextfield(placeholder: "First Name*",)),
                    SizedBox(width: 10, height: useResponsive(largeDesktopValue: 0, phone: 10),),
                    Flexible(child: ContactTextfield(placeholder: "Last Name*",)),                ],
                ),
                SizedBox(height: 10,),
                ContactTextfield(placeholder: "Email*",),
                SizedBox(height: 10,),
                ContactTextfield(placeholder: "Phone",)
              ],
            ),
          ),
        ),
        FractionallySizedBox(
          widthFactor: useResponsive(largeDesktopValue: 0.5, tablet: 1),
          child: Padding(
            padding: EdgeInsets.only(left: useResponsive(largeDesktopValue: 10, tablet: 0),top: useResponsive(largeDesktopValue: 0, tablet: 10)),
            child: ContactTextfield(
              placeholder: "Message*",
              maxLines: 8,
            ),
          ),
        )

      ],
    );
  }
}
