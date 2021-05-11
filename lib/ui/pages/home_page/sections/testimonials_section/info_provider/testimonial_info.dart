import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/playbook_section/model/playbook_model.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/testimonials_section/model/testimonial_model.dart';
import 'package:radity_website_clone/ui/shared/lang/locale_keys.g.dart';


class TestimonialInfo{

  List<TestimonialModel> modelList = [
    TestimonialModel(
        imageLink: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/d7/cb/d7cba041-a077-4280-963d-0bc8bda9ab54/kathrin-lehner-foto1024x1024.jpg",
        name: "Kathrin Lehner",
        title: 'CEO, Co-Founder Sanasearch.ch',
        quote: LocaleKeys.testimonial_quotes_kathrin),
    TestimonialModel(
        imageLink: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/af/53/af53a54a-9356-4c05-90e7-8865ed2163dd/kyle_kemper_headshot.jpg",
        name: "Kyle JJ Kemper",
        title: 'Founder, Swiss Key Wallet',
        quote: LocaleKeys.testimonial_quotes_kyle),
    TestimonialModel(
        imageLink: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/02/25/0225fbbd-2354-41d5-b251-ff7a1c21c699/charles-le2424.png",
        name: "Charles Ginguené",
        title: 'Le 24/24',
        quote: LocaleKeys.testimonial_quotes_charles),
    TestimonialModel(
        imageLink: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/cb/ba/cbbaf5e6-6375-4734-b2c4-1c8042423dff/john-hucker.png",
        name: "John Hucker CFA, MBA",
        title: 'President Swiss Finance + Technology Association',
        quote: LocaleKeys.testimonial_quotes_john),
    TestimonialModel(
        imageLink: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/91/82/91829764-60a7-4fa3-8712-4f8fc4e56dfa/peter-weiss.png",
        name: "Peter Weiss",
        title: 'CEO Axcent AG',
        quote: LocaleKeys.testimonial_quotes_peter),
  ];


}

final TestimonialInfoProvider = Provider((_)=> TestimonialInfo());