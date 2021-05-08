import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';

class TestimonialItem extends HookWidget {

@override
Widget build(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: useResponsive(largeDesktopValue: 30,desktop: 10)),
    child: Center(
      child: Container(
        height: 237,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
        ),
      ),
    ),

  );
}}
