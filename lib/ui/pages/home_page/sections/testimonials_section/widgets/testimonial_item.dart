import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:radity_website_clone/core/enums/media.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';
import 'package:radity_website_clone/core/extensions/string_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/testimonials_section/model/testimonial_model.dart';
import 'package:supercharged/supercharged.dart';

class TestimonialItem extends HookWidget {
  final TestimonialModel model;
  final int itemIndex;
  final int currentIndex;

  TestimonialItem(
      {required this.model, required this.itemIndex, this.currentIndex = 0});

  @override
  Widget build(BuildContext context) {
    Flex buildQuoteRow() {
      return Flex(
        direction: useResponsive(
            largeDesktopValue: Axis.horizontal, tablet: Axis.vertical),
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: useResponsive(
            largeDesktopValue: MainAxisSize.max, tablet: MainAxisSize.min),
        children: [
          Icon(
            Octicons.quote,
            size: 15,
            color: context.theme.highlightColor,
          ),
          SizedBox(
            height: useResponsive(largeDesktopValue: 0, tablet: 27),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: useResponsive(largeDesktopValue: 30, tablet: 0)),
              child: Text(
                model.quote.locale,
                style: context.textTheme.bodyText1!.copyWith(
                    color: context.theme.colorScheme.ebonyClay,
                    fontWeight: FontWeight.w500,
                    height: 1.875,
                    letterSpacing: -0.7),
              ),
            ),
          )
        ],
      );
    }

    Container buildTestimonialImage() {
      return Container(
        width: useResponsive(largeDesktopValue: 120, tablet: 80),
        height: useResponsive(largeDesktopValue: 120, tablet: 80),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(
                image: NetworkImage(
              model.imageLink,
            ))),
      );
    }

    Column buildTestimonialInfoColumn() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: useResponsive(
            largeDesktopValue: MainAxisAlignment.center,
            tablet: MainAxisAlignment.start),
        children: [
          Text(
            model.name.toUpperCase(),
            style: context.textTheme.subtitle2!.copyWith(
                color: context.theme.primaryColorDark, letterSpacing: -0.3),
          ),
          Text(
            model.title,
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.subtitle2!.copyWith(
                color: context.theme.colorScheme.stormGray,
                letterSpacing: -0.4,
                height: 1.642),
          )
        ],
      );
    }

    Row buildSmallScreenRow() {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTestimonialImage(),
          SizedBox(
            width: 15,
          ),
          Expanded(child: buildTestimonialInfoColumn())
        ],
      );
    }

    double getLargeScreenItemOpacity() {
      if (currentIndex == 4) {
        if (itemIndex == currentIndex || (itemIndex == 0)) {
          return 1;
        } else {
          return 0.6;
        }
      } else {
        if (itemIndex == currentIndex || (itemIndex == currentIndex + 1)) {
          return 1;
        } else {
          return 0.6;
        }
      }
    }

    double getPhoneItemOpacity() {
      if (itemIndex == currentIndex) return 1;
      return 0.6;
    }

    return AnimatedOpacity(
      duration: 0.2.seconds,
      opacity: context.media == Media.PHONE
          ? getPhoneItemOpacity()
          : getLargeScreenItemOpacity(),
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: useResponsive(largeDesktopValue: 30, desktop: 15, phone: 7)),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              margin: useResponsive(largeDesktopValue: EdgeInsets.zero, phone: EdgeInsets.only(bottom:20)),
              height: useResponsive(
                  largeDesktopValue: 237, desktop: 267, tablet: 350, phone: 380),
              padding: useResponsive(
                  largeDesktopValue: EdgeInsets.only(
                    top: 30,
                    left: 30,
                  ),
                  tablet: EdgeInsets.all(30)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: context.theme.accentColor,
                  boxShadow: useResponsive(largeDesktopValue: [], phone: [
                    BoxShadow(
                        color: context.theme.colorScheme.black.withOpacity(0.15),
                        offset: Offset(0, 6),
                        blurRadius: 14,
                        spreadRadius: -4)
                  ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildQuoteRow(),
                  useResponsive(
                      largeDesktopValue: Align(
                        alignment: Alignment.bottomRight,
                        child: FractionallySizedBox(
                          widthFactor: 0.7129,
                          child: Container(
                            height: 87,
                            padding: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: context.theme.colorScheme.athensGray,
                            ),
                            child: buildTestimonialInfoColumn(),
                          ),
                        ),
                      ),
                      tablet: buildSmallScreenRow())
                ],
              ),
            ),
            useResponsive<Widget>(
                largeDesktopValue: Positioned(
                  left: 30,
                  bottom: 0,
                  child: buildTestimonialImage(),
                ),
                tablet: Container())
          ],
        ),
      ),
    );
  }
}
