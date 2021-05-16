import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/journal_section/model/journal_model.dart';


class AboutUsSloganInfo {

  String leftSloganParagraph = "Meet us for a coffee to have a personal introduction. How can we collaborate? If you look for genuine professionals to build your digital product, look no further.";
  String rightSloganParagraph = "As an owner managed company, we provide personal care and dedication to our clients. We are here for the long term.";
}

final AboutUsSloganInfoProvider = Provider((_) => AboutUsSloganInfo());
