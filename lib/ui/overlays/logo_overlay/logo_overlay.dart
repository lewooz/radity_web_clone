import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radity_website_clone/ui/overlays/logo_overlay/animated_radity_logo.dart';
import 'package:radity_website_clone/ui/shared/widgets/main_gradient_container.dart';
import 'package:supercharged/supercharged.dart';

class LogoOverlay extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isOverlayVisible = useState(true);

    useEffect((){
      Timer(2700.milliseconds, (){
        isOverlayVisible.value = false;
      });
    },[]);

    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: FadeOutRight(
        delay: 2200.milliseconds,
        duration: 400.milliseconds,
        animate: true,
        child: Visibility(
          visible: isOverlayVisible.value,
          child: MainGradientContainer(
            child: Center(
              child: AnimatedRadityLogo(),
            ),
          ),
        ),
      ),
    );
  }
}
