import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class CustomButton extends HookWidget {
  final Color? borderColor, backgroundColor, textColor, hoverBackgroundColor, hoverTextColor, hoverBorderColor;
  final double? height, borderWidth, fontSize, iconSize, borderRadius;
  final FontWeight? fontWeight;
  final String text;
  final VoidCallback onPressed;
  final IconData? iconData;
  final bool? isReversed;

  CustomButton({required this.text,
    required this.onPressed,
    this.height,
    this.borderRadius = 3,
    this.borderColor = Colors.transparent,
    this.backgroundColor = Colors.white,
    this.hoverBackgroundColor,
    this.hoverBorderColor,
    this.hoverTextColor,
    this.textColor = Colors.black,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w700,
    this.borderWidth = 1,
    this.iconData,
    this.iconSize = 20,
    this.isReversed = false
  });

  @override
  Widget build(BuildContext context) {
    final isHovering = useState(false);
    final Duration animationDuration = 0.2.seconds;
    final TextStyle buttonTextStyle = GoogleFonts.nunitoSans(
        color: textColor,
        fontSize: fontSize!, fontWeight: fontWeight!
    );


    buildAnimatedIcon(){
      return Padding(
        padding: isReversed! ? EdgeInsets.only(right: 20) : EdgeInsets.only(left: 20),
        child: AnimatedSwitcher(
          duration: animationDuration,
          child: isHovering.value ? Icon(iconData,
            key: ValueKey(0),
            color: hoverTextColor ?? textColor,
            size: iconSize,
          ) : Icon(iconData,
            key: ValueKey(1),
            color: textColor,
            size: iconSize,
          ),
        ),
      );
    }

    List<Widget> _buildButtonWidgetList(){
      return [
        AnimatedDefaultTextStyle(
          style: isHovering.value ? buttonTextStyle.copyWith(
              color: hoverTextColor ?? textColor
          )
              : buttonTextStyle,
          duration: animationDuration,
          child: Text(text),
        ),
        if(iconData != null) buildAnimatedIcon()
      ];
    }

    return InkWell(
      onTap: ()=> onPressed(),
      onHover: (hovering)=> isHovering.value = hovering,
      child: AnimatedContainer(
          height: height,
          duration: animationDuration,
          padding: EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius!),
            border: Border.all(color: isHovering.value ? (hoverBorderColor ?? borderColor!) : borderColor!, width: borderWidth ?? 1),
            color: isHovering.value ? hoverBackgroundColor : backgroundColor
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: isReversed!
                ?  _buildButtonWidgetList().reversed.toList()
                : _buildButtonWidgetList()
          )),
    );
  }


}
