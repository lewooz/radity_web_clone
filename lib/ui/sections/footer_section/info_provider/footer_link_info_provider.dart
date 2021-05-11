import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/journal_section/model/journal_model.dart';
import 'package:radity_website_clone/ui/sections/footer_section/model/footer_link_model.dart';


class FooterLinkInfo {
  List<FooterLinkModel> firstColumnList = [
    FooterLinkModel(
      title: "Home"
    ),
    FooterLinkModel(
      title: "Services"
    ),
    FooterLinkModel(
        title: "About Us"
    ),
    FooterLinkModel(
        title: "Contact"
    ),
    FooterLinkModel(
        title: "Radity Blog"
    ),
    FooterLinkModel(
        title: "Disclaimer"
    ),
    FooterLinkModel(
        title: "Legal Notice"
    ),
    FooterLinkModel(
        title: "Case Studies"
    ),
  ];

  List<FooterLinkModel> secondColumnList = [
    FooterLinkModel(
        title: "UI & UX Design"
    ),
    FooterLinkModel(
        title: "Vue.js Development"
    ),
    FooterLinkModel(
        title: "Azure Cloud Service"
    ),
    FooterLinkModel(
        title: "Django Development"
    ),
    FooterLinkModel(
        title: "Flutter Mobile App Development"
    ),
    FooterLinkModel(
        title: "React Development"
    ),
    FooterLinkModel(
        title: "Laravel Development"
    ),
  ];

  List<FooterLinkModel> thirdColumnList = [
    FooterLinkModel(
        title: "Frontend Development"
    ),
    FooterLinkModel(
        title: ".NET Core Development"
    ),
    FooterLinkModel(
        title: "Python Development"
    ),
    FooterLinkModel(
        title: "Django CMS Development"
    ),
    FooterLinkModel(
        title: "DevOps"
    ),
    FooterLinkModel(
        title: "PHP Web Development"
    ),
  ];
}

final FooterLinkInfoProvider = Provider((_) => FooterLinkInfo());
