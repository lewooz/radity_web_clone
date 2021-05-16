import 'package:hooks_riverpod/hooks_riverpod.dart';



class ServicesSloganInfo {

  final String backgroundImage = "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/12/64/126495ff-4f1a-4820-9697-44c8fb6c30e9/service-showcase-9.png";
  final String sloganParagraph = "Digital Solutions and talented developers.\nFor Startups and Grownups.";
}

final ServicesSloganInfoProvider = Provider((_) => ServicesSloganInfo());
