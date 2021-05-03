enum Media{
 PHONE, TABLET, DESKTOP, LARGE_DESKTOP, TOO_LARGE_DESKTOP
}

extension BreakPointsExtension on Media{
   double get breakpoint {
      switch(this){
        case Media.PHONE:
          return 567;
        case Media.TABLET:
         return 768;
        case Media.DESKTOP:
         return 992;
        case Media.LARGE_DESKTOP:
         return 1200;
        case Media.TOO_LARGE_DESKTOP:
         return 2559;
      }
   }
}