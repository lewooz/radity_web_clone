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

  final extraReferenceImages = [
    "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/93/18/9318bea8-44ee-45ae-9680-3aa482815763/helvetican.svg",
    "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/f3/77/f377135e-1615-41c3-830d-c815d978ea4e/swisslife.svg",
    "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/3d/de/3ddec231-730a-49cf-99be-5bd1e1dd99ef/swissfintech.svg",
    "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/c6/e3/c6e33a74-4a65-407f-a56d-eab12c2db9c6/axcent.svg",
    "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/65/27/65273659-59e4-4ef9-9384-e62395d03ad3/sherpany.svg",
    "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/51/bb/51bb89d8-e650-4735-85a9-e4fc61103aad/sanasearch-logo2x.png",
    "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/69/0b/690b7298-6d52-4054-880d-9097aa29acad/le-24-24.svg",
    "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/fe/d8/fed84911-5dce-469c-a5d5-7000a96f52ab/swisskey.svg",
    "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/e0/04/e004126c-c17b-4e9d-b3d8-d184c58b8b9b/borsala.svg"
  ];

  final playbookSymmetricContainerImages = [
    "https://radity.com/static/img/playbook-left.png",
    "https://radity.com/static/img/playbook-right.png"
  ];

  final playbookMiddleContainerImages = [
    "https://radity.com/static/img/playbook-center-left.png",
    "https://radity.com/static/img/playbook-center-right.png"
  ];
}

final stringConstantsProvider = Provider((_)=> StringConstantsManager());