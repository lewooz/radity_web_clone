import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';

class PageBadge extends StatelessWidget {
  final Size badgeSize;
  final String text;

  PageBadge({required this.badgeSize, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: badgeSize.width,
      height: badgeSize.height,
      child: CustomPaint(
        size: badgeSize,
        painter: BadgePainter(context),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: GoogleFonts.nunitoSans(
              fontSize: 14,
              fontWeight: FontWeight.w900,
              letterSpacing: -.1,
              color: context.theme.primaryColorDark
            ),
          ),
        ),
      ),
    );
  }
}

class BadgePainter extends CustomPainter{

  BuildContext context;

  BadgePainter(this.context);

  @override
  void paint(Canvas canvas, Size size) {

    Paint paint_0 = new Paint()
      ..color = context.theme.colorScheme.tangerine
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path_0 = Path();
    path_0.moveTo(0,0);
    path_0.quadraticBezierTo(size.width*0.76,0,size.width,0);
    path_0.cubicTo(size.width*1.00,size.height*0.03,size.width*0.95,size.height*0.46,size.width*0.95,size.height*0.50);
    path_0.cubicTo(size.width*0.95,size.height*0.56,size.width*1.00,size.height*1.00,size.width,size.height);
    path_0.quadraticBezierTo(size.width*0.76,size.height*1.01,0,size.height);
    path_0.lineTo(0,0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);




  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

