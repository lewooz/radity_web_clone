import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

abstract class BaseWidget extends HookWidget{
  final Widget Function(BuildContext context) onPageBuilder;

  BaseWidget({required this.onPageBuilder});

  TextTheme get textTheme => Get.textTheme;
  ColorScheme get colorScheme => Get.theme.colorScheme;

  @override
  Widget build(BuildContext context) {
    return onPageBuilder(context);
  }
}