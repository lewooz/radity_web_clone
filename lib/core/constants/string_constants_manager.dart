import 'package:hooks_riverpod/hooks_riverpod.dart';

class StringConstantsManager{

  final sloganTooltip = [
    "Marc Andreessen",
    """ published his now-classic """,
    "“Why Software Is Eating the World”",
    """ essay in The Wall Street Journal eight years ago. Today there isn't any business not shaken by software. "Digital Transformation" is the buzz. Every offline business has an online competitor. It is a matter of survival but also a matter of staying ahead of competition.
It is our mission to help you stay ahead in the race to digitalization.
- Özgür Aksakal"""
  ];
  final marcAndreesenUrl = "https://a16z.com/author/marc-andreessen/";
  final softwareEatingWorldUrl = "https://www.wsj.com/articles/SB10001424053111903480904576512250915629460";

}

final stringConstantsProvider = Provider((_)=> StringConstantsManager());