import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/shared/widgets/animated_moving_arrows.dart';
import 'package:radity_website_clone/ui/shared/widgets/main_gradient_container.dart';
import 'package:radity_website_clone/ui/shared/widgets/new_animations.dart';
import 'package:radity_website_clone/ui/shared/widgets/page_badge.dart';
import 'package:supercharged/supercharged.dart';

class SloganSectionMain extends HookWidget {
  final String backgroundImage, title, paragraph;
  final String? text;
  final bool isCareersPage;

  SloganSectionMain({required this.backgroundImage,required this.title,required this.paragraph, this.text, this.isCareersPage = false});

  @override
  Widget build(BuildContext context) {

    _buildFadeInLeftAnimation(
        {Widget child = const SizedBox(), Duration? delay}) {
      return CustomFadeAnimation(
        animationType: FadeAnimationType.FadeInLeft,
        duration: 0.8.seconds,
        delay: delay ?? 2.seconds,
        curve: Curves.easeOutQuart,
        animate: true,
        child: child,
      );
    }

    return MainGradientContainer(
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Positioned(
              top: isCareersPage ? 152 : 0,
              right: 0,
              bottom: 142,
              child: _buildFadeInLeftAnimation(
                  child: Visibility(
                    visible: useResponsive(largeDesktopValue: true, phone: isCareersPage ? false : true),
                    child: Image.network(
                      backgroundImage,
                      fit: isCareersPage ? BoxFit.contain : BoxFit.cover,
                      height: isCareersPage ? context.width - 754 : null,
                      width: context.dynamicWidth(0.5),
                      alignment: isCareersPage ? Alignment.centerRight : Alignment.topLeft,
                    ),
                  ),
                  delay: 2.seconds),
            ),
            Container(
                child: Center(
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(maxWidth: 1170),
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildFadeInLeftAnimation(
                            child: PageBadge(
                                badgeSize: Size(317, 43),
                                text: "SWISS QUALITY  -  GLOBAL DELIVERY"),
                            delay: 2.2.seconds),
                        _buildFadeInLeftAnimation(
                            child: Padding(
                              padding: EdgeInsets.only(top: 60),
                              child: Text(
                                  title,
                                  style: useResponsive(largeDesktopValue: context.textTheme.headline44.copyWith(
                                      color: context.theme.accentColor,
                                      letterSpacing: -1.6,
                                      height: 1.272),
                                    phone: context.textTheme.headline4!.copyWith(
                                        color: context.theme.accentColor,
                                        letterSpacing: -1.1,
                                        height: 1.375),
                                  )
                              ),
                            ),
                            delay: 2.4.seconds),
                        _buildFadeInLeftAnimation(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth: useResponsive(largeDesktopValue: 520, phone: double.infinity)
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Text(
                                  paragraph,
                                  style: context.textTheme.headline28.copyWith(
                                      color: context.theme.accentColor,
                                      letterSpacing: -.2,
                                      height: 1.5),
                                ),
                              ),
                            ),
                            delay: 2.6.seconds),
                        if(text!=null) _buildFadeInLeftAnimation(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth: useResponsive(largeDesktopValue: 520, phone: double.infinity)
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Text(
                                  text!,
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 18,
                                    height: 1.66,
                                    color: context.theme.accentColor
                                  )
                                ),
                              ),
                            ),
                            delay: 2.8.seconds),
                      ],
                    ),
                  ),
                )
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedMovingArrows())
          ],
        )
    );
  }
}
