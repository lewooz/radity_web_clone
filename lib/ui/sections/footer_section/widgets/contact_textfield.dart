import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';

class ContactTextfield extends HookWidget {

  String? placeholder;
  int? maxLines;

  ContactTextfield({this.placeholder ="", this.maxLines});

  @override
  Widget build(BuildContext context) {

    return TextField(
      style: context.textTheme.bodyText2!.copyWith(color: context.theme.colorScheme.ebonyClay),
      cursorColor: context.theme.colorScheme.black,
      maxLines: maxLines ?? null,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 15),
        filled: true,
        fillColor:  context.theme.colorScheme.athensGray,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: placeholder,
        hintStyle: context.textTheme.bodyText2!.copyWith(color: context.theme.colorScheme.black.withOpacity(0.6)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: BorderSide(color: context.theme.colorScheme.mischka),
        )
      ),
    );
  }
}
