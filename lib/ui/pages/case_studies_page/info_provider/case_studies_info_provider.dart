import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/case_studies_page/model/case_study_model.dart';



class CaseStudiesInfo {

  final String backgroundImage = "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/aa/23/aa233d88-9053-44d5-838d-80fe2cb9d15c/case-studies-2.png";
  final String sloganParagraph = "From Aesthetically pleasing and emotionally fulfilling user-experience to time-efficient and cost-efficient Backend Engineering, here is a small selection of projects we have recently delivered.";

  final List<CaseStudyModel> modelList = [
    CaseStudyModel(
        studyName: "Zimmerstund",
        studyInfo: "The Radity team has developed and designed a mobile app for Zurich’s hospitality industry association. A secure, cloud- and user-friendly membership app with integrated video streaming, event registration and an Instagram like platform.",
        studyImage: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public_thumbnails/filer_public/91/75/917551e9-1cee-4da2-ba92-ea92d37c840f/group_81.png__3054x2799_q90_subsampling-2.png",
        propertyList: ["Flutter", "Integrated Video Platform"],
        link: ""
    ),
    CaseStudyModel(
        studyName: "Robo Advisor",
        studyInfo: "Robo Advisor, a Swiss Wealth Manager, approached Radity looking to create the best digital experience for its UNHW clients across the world, by enhancing their customer experience and satisfaction. Despite the project being ambitious, our team at Radity were able to deliver the complete project in a tight time-frame. Some highlights from the project are: ",
        studyImage: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public_thumbnails/filer_public/f9/86/f986d06f-c819-432e-af05-acad714ef6e4/1-radity-robo1.png__1140x824_q90_subsampling-2.png",
        propertyList: ["Premium look and feel - With the three core colors being Gold, Black and White, the website offers its users a professional experience.", "Frontend and Backend Development", "Banking API Integration and Cloud DevOps"],
        link: ""
    ),
    CaseStudyModel(
        studyName: "AXIS",
        studyInfo: "Our team at Radity assisted AXIS in creating a winning user-experience and adding cloud support. AXIS is an intelligent client and product profitability analytics solution in the finance industry by Axcent AG, who is already a leader in Database and Datawarehouse technology.",
        studyImage: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public_thumbnails/filer_public/b7/e6/b7e6c2b9-33f2-481b-8de3-5e5592f89876/axis-price-simulation-3.png__1140x824_q90_subsampling-2.png",
        propertyList: ["Frontend Development", ".NET Core Engineering", "Azure DevOps"],
        link: ""
    ),
    CaseStudyModel(
        studyName: "Swiss Fintech Association Website",
        studyInfo: "The Swiss Finance + Technology Association is the leading FinTech hub in Switzerland.",
        studyImage: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public_thumbnails/filer_public/e0/b9/e0b957bd-2593-4b23-9e23-fe6040601d58/desktop.png__1140x824_q90_subsampling-2.png",
        propertyList: ["Responsive Design", "Frontend Development", "Wordpress Membership"],
        link: ""
    ),
    CaseStudyModel(
        studyName: "Chiara Mobile App",
        studyInfo: "Chiara, developed using Google Flutter, is an application that provides you a platform to rent and lease items that you do not use regularly.",
        studyImage: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public_thumbnails/filer_public/f4/42/f442fe89-4d73-4484-9078-fbd6a8428713/chiara-main-show.png__2060x1780_q90_subsampling-2.png",
        propertyList: ["Google Flutter", "Google Firebase", "Algolia"],
        link: ""
    ),
    CaseStudyModel(
        studyName: "Radity Crypto",
        studyInfo: "Ethereum and Waves platforms - Create Smart contracts automatically. Radity Crypto provides users ability to experiment with blockchain and crypto technologies.",
        studyImage: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public_thumbnails/filer_public/45/3d/453d8529-3e90-45b8-a0b4-45e00cc7cc36/radity-crpyto.png__1718x1025_q90_subsampling-2.png",
        propertyList: ["Blockchain Development", "Django Development"],
        link: ""
    ),
    CaseStudyModel(
        studyName: "Helvetican Website",
        studyInfo: "Helvetican - Wealth Management - Swiss, Personal and Dedicated.",
        studyImage: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public_thumbnails/filer_public/b7/35/b7354769-5c18-4b94-9d74-bdfd2fa58d50/helvetican-website.png__1140x824_q90_subsampling-2.png",
        propertyList: ["Responsive Design", "Frontend Development", "Django CMS Development"],
        link: ""
    ),
  ];
}

final CaseStudiesInfoProvider = Provider((_) => CaseStudiesInfo());
