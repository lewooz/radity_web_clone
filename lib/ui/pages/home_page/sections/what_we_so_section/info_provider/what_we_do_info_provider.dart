import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/what_we_so_section/model/what_we_do_model.dart';

class WhatWeDoInfo{
  List<WhatWeDoModel> modelList = [
    WhatWeDoModel(
        title: "UX and UI Design",
        imageLink: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public_thumbnails/filer_public/71/61/7161a14c-5b08-4678-a1e7-8ff61238dde2/only-webpage-3.png__90x102_q90_subsampling-2.png",
        content: """We design beautiful, functional and purposeful apps, webapps and websites. From Wireframes to MVP to Pixel-Perfect designs. Complex workflows simplified but also beauty of a brand brought out by the simplicity.""",
        launchLink: ""),
    WhatWeDoModel(
        title: "Development",
        imageLink: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public_thumbnails/filer_public/96/eb/96eb1452-4954-410d-b9e2-9a588cee551c/only-web-app-icon-4.png__90x102_q90_subsampling-2.png",
        content: """We engineer and build software, web and mobile applications, APIs and more. Our team is experienced with modern technologies and programming languages. Our processes are effective and lean. We utilize agile project""",
        launchLink: ""),
    WhatWeDoModel(
        title: "Cloud, Devops, Hosting",
        imageLink: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public_thumbnails/filer_public/25/c4/25c4ede1-ae9d-43e7-84fc-8bc0a4e08190/cloud.png__92x102_q90_subsampling-2.png",
        content: """We run your application on the Cloud or in a Swiss Data Center depending on your requirements. Scalable, high-performance and cost effective. We support fully automated deployments, local or test environments. Complex requirements""",
        launchLink: ""),
    WhatWeDoModel(
        title: "Dedicated Developers",
        imageLink: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public_thumbnails/filer_public/88/e5/88e55143-dbd9-4a39-be46-2e31b6118b07/developer.png__90x104_q90_subsampling-2.png",
        content: """We provide you talented and experienced developers for you to manage your project. Frontend developers, backend developers, full-stack developers, UX designers or devops.""",
        launchLink: ""),
  ];

}

final WhatWeDoInfoProvider = Provider((_)=> WhatWeDoInfo());