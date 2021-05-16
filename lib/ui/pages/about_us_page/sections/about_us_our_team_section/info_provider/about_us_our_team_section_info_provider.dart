import 'package:hooks_riverpod/hooks_riverpod.dart';



class AboutUsOurTeamInfo {

String ourTeamMainParagraph = "We like getting our hands dirty, build and ship products. We like learning. Everyday. We are in this for the long term. Committed. Our developers (aka Raditians) are experienced and skilled in their core competencies. In addition to their core competencies, Raditians are team-players, effective communicators and kind human beings.";
List<String> imageLinkList = [
  "https://radity.com/static/img/raditians/raditians-1.jpg",
  "https://radity.com/static/img/raditians/raditians-2.jpg",
  "https://radity.com/static/img/raditians/raditians-4.jpg",
  "https://radity.com/static/img/raditians/raditians-3.jpg",
  "https://radity.com/static/img/raditians/raditians-5.jpg",
  "https://radity.com/static/img/raditians/raditians-6.jpg",
  "https://radity.com/static/img/raditians/raditians-7.jpg",
  "https://radity.com/static/img/raditians/raditians-8.jpg",
  "https://radity.com/static/img/raditians/raditians-9.jpg",
];

}

final AboutUsOurTeamInfoProvider = Provider((_) => AboutUsOurTeamInfo());
