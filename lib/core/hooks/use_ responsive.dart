import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_website_clone/core/enums/media.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';

///CSS-LIKE useResponsive hook by @Levent ÖZKAN

T useResponsive<T>(
    {required T largeDesktopValue,
    T? phone, T? tablet,T? desktop,T? tooLargeDesktop}) {
  return use(UseResponsiveHook(
      largeDesktopValue: largeDesktopValue,
      phone: phone,
      tablet: tablet,
      desktop: desktop,
      tooLargeDesktop: tooLargeDesktop));
}

class UseResponsiveHook<T> extends Hook<T> {
  final T largeDesktopValue;
  final T? phone, tablet, desktop, tooLargeDesktop;

  UseResponsiveHook(
      {required this.largeDesktopValue,
      this.phone,
      this.tablet,
      this.desktop,
      this.tooLargeDesktop});

  @override
  _UseResponsiveHookState<T> createState() => _UseResponsiveHookState(
      largeDesktop: largeDesktopValue,
      phone: phone,
      tablet: tablet,
      desktop: desktop,
      tooLargeDesktop: tooLargeDesktop);
}

class _UseResponsiveHookState<T> extends HookState<T, UseResponsiveHook<T>> {
  T largeDesktop;
  T? phone, tablet, desktop, tooLargeDesktop;

  _UseResponsiveHookState(
      {required this.largeDesktop,
      this.phone,
      this.tablet,
      this.desktop,
      this.tooLargeDesktop});

  @override
  T build(BuildContext context) {
    var deviceScreenType = context.media;
    if (deviceScreenType == Media.TOO_LARGE_DESKTOP) {
      if (tooLargeDesktop != null) return tooLargeDesktop!;
    }
    if (deviceScreenType == Media.LARGE_DESKTOP) {
      return largeDesktop;
    }
    if (deviceScreenType == Media.DESKTOP) {
      if (desktop != null) return desktop!;
    }
    if (deviceScreenType == Media.TABLET) {
      if (tablet != null) return tablet!;
      if (desktop != null) return desktop!;
    }
    if (deviceScreenType == Media.PHONE) {
      if (phone != null) return phone!;
      if (tablet != null) return tablet!;
      if (desktop != null) return desktop!;
    }
    return largeDesktop;
  }
}
