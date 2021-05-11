import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:radity_website_clone/core/enums/media.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/testimonials_section/info_provider/testimonial_info.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/testimonials_section/widgets/testimonial_item.dart';
import 'package:supercharged/supercharged.dart';

class TestimonialCarousel extends HookWidget  {
  @override
  Widget build(BuildContext context) {
    final controller = InfiniteScrollController();
    final modelList = useProvider(TestimonialInfoProvider).modelList;
    final currentIndex = useState(0);

     useEffect(() {
      Timer.periodic(5.seconds, (timer) {
        controller.nextItem(
            duration: 0.8.seconds, curve: Curves.easeInOutQuart);
      });
      return controller.dispose;
    }, []);

     onIndexChange(int newIndex){
       currentIndex.value = newIndex;
     }

    double getResponsiveExtent() {
      if (context.media == Media.DESKTOP ||
          context.media == Media.TABLET) {
        return MediaQuery.of(context).size.width * 0.4533;
      }
      if(context.media == Media.PHONE){
        return MediaQuery.of(context).size.width * 0.86;
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

    bool centerOnPhone(){
      if(context.media == Media.PHONE)
        return true;
      return false;
    }


    return SizedBox(
      height: useResponsive(largeDesktopValue: 267,desktop: 297,tablet: 350, phone: 400),
      child: InfiniteCarousel.builder(
          center: centerOnPhone(),
          itemCount: modelList.length,
          itemExtent: getResponsiveExtent(),
          anchor: getResponsiveAnchor(),
          controller: controller,
          velocityFactor: 0.4,
          onIndexChanged: (index) => onIndexChange(index),
          itemBuilder: (BuildContext context, int itemIndex, int realIndex) =>
              TestimonialItem(
                  model:modelList[itemIndex],
                  currentIndex: currentIndex.value,
                  itemIndex: itemIndex,
              )),
    );
  }
}
