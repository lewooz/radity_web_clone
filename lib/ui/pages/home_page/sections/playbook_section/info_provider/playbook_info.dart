import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/playbook_section/model/playbook_model.dart';
import 'package:radity_website_clone/ui/shared/lang/locale_keys.g.dart';


class PlaybookInfo{

  List<PlaybookModel> modelList = [
    PlaybookModel(
        imageLink: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/5b/bd/5bbd3d8d-6dcb-4e4d-b399-d73cfe75d643/playbook-concept.svg",
        name: "Concept & UX"),
    PlaybookModel(
        imageLink: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/eb/e3/ebe345a9-7d61-494c-8a21-a10a853df918/playbook-design.svg",
        name: "Design & Development"),
    PlaybookModel(
        imageLink: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/dc/8f/dc8fb6e9-a7fd-4b37-b67a-6915046138d1/playbook-launch.svg",
        name: "Launch & Operate"),
    PlaybookModel(
        imageLink: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/07/c2/07c2184e-3eac-4c87-a674-8b9d5412cfec/playbook-evolve.svg",
        name: "Evolve & Support"),
    PlaybookModel(
        imageLink: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/8d/d9/8dd9b33d-3aa4-4485-a70a-00d6b96fafed/playbook-development.svg",
        name: "Development Teams"),
    PlaybookModel(
        imageLink: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/81/3a/813ac915-900c-4bf4-843e-59d6b6f2d64c/playbook-consulting.svg",
        name: "Consulting"),

  ];


}

final PlaybookInfoProvider = Provider((_)=> PlaybookInfo());