import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:radity_website_clone/core/enums/media.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/testimonials_section/widgets/testimonial_item.dart';
import 'package:supercharged/supercharged.dart';

class TestimonialCarousel extends HookWidget  {
  @override
  Widget build(BuildContext context) {
    final controller = InfiniteScrollController();

    useEffect(() {
      Timer.periodic(5.seconds, (timer) {
        controller.nextItem(
            duration: 0.8.seconds, curve: Curves.easeInOutQuart);
      });
    }, []);

    double getResponsiveExtent() {
      if (context.media == Media.DESKTOP ||
          context.media == Media.TABLET ||
          context.media == Media.PHONE) {
        return MediaQuery.of(context).size.width * 0.4533;
      }
      return 630;
    }

    getResponsiveAnchor() {
      if (context.media == Media.DESKTOP ||
          context.media == Media.TABLET ||
          context.media == Media.PHONE) {
        return (((context.width -
                    ((MediaQuery.of(context).size.width * 0.4533) * 2)) /
                2) /
            context.width);
      }
      return (((context.width - 1260) / 2) / context.width);
    }



    return SizedBox(
      height: 400,
      child: InfiniteCarousel.builder(
          center: false,
          itemCount: 20,
          itemExtent: getResponsiveExtent(),
          anchor: getResponsiveAnchor(),
          controller: controller,
          velocityFactor: 0.4,
          itemBuilder: (BuildContext context, int itemIndex, int realIndex) =>
              TestimonialItem()),
    );
  }
}
