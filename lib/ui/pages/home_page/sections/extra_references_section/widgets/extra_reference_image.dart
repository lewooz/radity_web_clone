import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/ui/shared/widgets/new_animations.dart';

import 'package:supercharged/supercharged.dart';

class ExtraReferenceImage extends HookWidget {

  final String imageLink;
  bool animate;
  int index;

  ExtraReferenceImage({required this.imageLink,required this.animate, required this.index});

  @override
Widget build(BuildContext context) {

  return CustomFadeAnimation(
          animationType: FadeAnimationType.FadeIn,
          duration: 0.8.seconds,
          delay: (0.3*index).seconds,
          animate: animate,
          child: ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: 140
              ),
              child: Image.network(imageLink)),
      );

}}
