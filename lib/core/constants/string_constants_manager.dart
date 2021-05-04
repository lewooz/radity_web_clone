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

  final clutchLogo = "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/30/f8/30f88205-2730-4943-8bbc-d44cc5541242/clutch3x.png";
  final microsoftSilverLogo = "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/8f/ad/8fad8061-b2eb-4964-b238-0dc6f0f8a25d/partner-microsoft-silver.svg";
  final divioLogo = "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/7a/25/7a255d7e-c14d-45ae-96e1-8e1712166618/partner-divio.svg";
  final swissMadeSoftwareLogo = "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/d9/15/d915f33a-d5fb-4bcf-ae65-448c09fea719/partner-swiss-made-software.svg";
  final swissFinanceLogo = "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/04/fb/04fb0d0a-1543-4f5a-b1b7-3b3605f31c4d/parter-swiss-finance-technology-association.svg";

}

final stringConstantsProvider = Provider((_)=> StringConstantsManager());