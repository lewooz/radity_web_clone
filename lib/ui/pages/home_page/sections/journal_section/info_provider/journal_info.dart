import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/journal_section/model/journal_model.dart';


class JournalInfo {
  List<JournalModel> modelList = [
    JournalModel(
        imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/a4/52/a452adcb-288a-47c1-9fb5-37825be06792/frameworks2.png',
        content: 'It is impractical to imagine web development without Javascript. Angular,React and Vue are all proven Javascript Frameworks for...',
        title: 'Angular vs React vs Vue : Which one is the best choice for 2021?'
    ),
    JournalModel(
        imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/58/26/5826421e-9b8e-4f94-8a9b-a8f58c9f94eb/global_cto_forum.jpg',
        content: 'Radity is happy to sponsor the new technology ecosystem platform Global CTO Forum.',
        title: 'Global CTO Forum'
    ),
    JournalModel(
        imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/1c/b9/1cb93552-977a-4bfb-beed-b70418fa43ee/onboarding_and_user_engagement.png',
        content: 'People download many apps, and they delete quite a lot of them. One of the reasons that they decide to delete them is how these...',
        title: 'Onboarding and User Engagement'
    ),
    JournalModel(
        imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/47/1a/471aada6-51e7-4c39-9d40-7fa95ad096a3/raditian.png',
        content: 'Raditian is an outstanding free Portfolio and CV WordPress theme that is perfect for personal or small agency websites. Whether...',
        title: 'Raditian - Wordpress Theme'
    ),
  ];
}

final JournalInfoProvider = Provider((_) => JournalInfo());
