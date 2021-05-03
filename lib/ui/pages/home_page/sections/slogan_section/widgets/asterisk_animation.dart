import 'dart:async';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/home_page/vm/homepage_vm.dart';
import 'package:supercharged/supercharged.dart';

class AsteriskAnimation extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final toggleAnimation = useState(false);

    useEffect((){
      Timer(3.seconds, (){
        toggleAnimation.value = true;
      });
    },[]);

    onAsteriskHover(bool isHovering) {
      context.read(HomePageVMProvider).setSloganTooltipVisibility(true);
    }

    return InkWell(
      onTap: (){},
      onHover: (isHovering)=>onAsteriskHover(isHovering),
      child: Container(
        width: 35,
        height: 35,
        margin: EdgeInsets.only(top: 18),
        child: FlareActor(
            "assets/animations/asterisk_2.flr",
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: toggleAnimation.value ? "go" : "idle",
          ),
      ),
    );
  }


}
