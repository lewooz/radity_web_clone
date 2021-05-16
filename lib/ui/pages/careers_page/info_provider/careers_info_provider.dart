import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/careers_page/model/careers_model.dart';
import 'package:radity_website_clone/ui/pages/case_studies_page/model/case_study_model.dart';



class CaseStudiesInfo {

  final String backgroundImage = "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/da/87/da871b50-2cd4-436c-a764-e8e444bc3917/careers-bg-4.png";
  final String sloganParagraph = "Would you like to work with a technology startup developing amazing products and projects for global clients?";
  final String sloganText = "Radity is an equal-opportunity company. In general Radity offers market-competitive salary, collegial team atmosphere, challenging and interesting projects and opportunities to learn and grow.";


  final List<CareerModel> modelList = [
    CareerModel(
        careerName: "Senior Frontend React JS Developer",
        careerParagraph: "We are looking for a motivated Frontend Developer with React.js experience"
    ),
    CareerModel(
        careerName: "Senior Python/ Django Software Engineer",
        careerParagraph: "We are looking for a motivated Python / Django developer to join our team and work on exciting projects."
    ),
    CareerModel(
        careerName: "Experienced Project Manager/Business Analyst",
        careerParagraph: "We are looking for a senior agile Project Manager who knows what it takes to lead a team, deliver and ship software."
    ),
    CareerModel(
        careerName: "Internship - Marketing and Communications",
        careerParagraph: "Are you interested in modern marketing techniques, new media and content management?"
    ),
    CareerModel(
        careerName: "Web Copywriter",
        careerParagraph: "Be our next Digital Copywriter at Radity."
    ),
    CareerModel(
        careerName: "Senior UX Designer",
        careerParagraph: "Lead Design Team at Radity"
    ),
    CareerModel(
        careerName: "Entrepreneurship Intern",
        careerParagraph: "Entreprenerhsip Internship for ambitious young professionals"
    ),
    CareerModel(
        careerName: "Senior Vue.JS Frontend Developer",
        careerParagraph: "We are looking for a motivated Frontend Developer with Vue.js experience"
    ),
  ];
}

final CareersInfoProvider = Provider((_) => CaseStudiesInfo());
