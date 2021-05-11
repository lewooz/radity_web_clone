import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/journal_section/model/journal_model.dart';
import 'package:radity_website_clone/ui/pages/home_page/sections/technology_stack_section/model/technology_stack_model.dart';


class TechnologyStackInfo {
  List<TechnologyStackModel> modelList = [
    TechnologyStackModel(
        imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/33/cc/33cc1121-1660-436a-b27b-b087f944b079/azure.png',
        name: 'Microsoft Azure',
        type: 'Cloud Service',
        isBig: true
    ),
    TechnologyStackModel(
        imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/cd/76/cd767942-f4a2-41a0-b52b-f734a64cf22c/net.png',
        name: '.NET Core',
        type: 'Web Framework',
        isBig: false
    ),
    TechnologyStackModel(
        imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/bc/fd/bcfd20e9-6988-4e21-8262-9282f6ec0770/vue.png',
        name: 'Vue.js',
        type: 'JS Framework',
        isBig: true
    ),
    TechnologyStackModel(
        imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/89/81/898112a9-b23a-46ff-a7da-5d4abff43a92/2000px-python-logo-notext.png',
        name: 'Python',
        type: 'Language',
        isBig: true
    ),
    TechnologyStackModel(
        imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/6b/48/6b487469-a885-43e6-95fe-d93cb7f509d6/django.png',
        name: 'Django',
        type: 'Web Services',
        isBig: true
    ),
    TechnologyStackModel(
        imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/b8/b9/b8b981ab-f323-4eae-b1e9-db416a86cd4b/react-icon.png',
        name: 'React',
        type: 'JS Framework',
        isBig: true
    ),
    TechnologyStackModel(
        imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/23/5c/235c6dd4-2bc6-4ef4-98df-d09b80083de1/laravel_256icon.png',
        name: 'PHP Laravel',
        type: 'Web Framework',
        isBig: false
    ),
    TechnologyStackModel(
        imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/5b/c6/5bc6e2e7-e573-4220-887a-ec77721268ae/flutter_icon.png',
        name: 'Flutter',
        type: 'Mobile App Framework',
        isBig: true
    ),
    TechnologyStackModel(
        imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/cb/d5/cbd588e9-aa59-4c04-a05b-635843e51d12/node.png',
        name: 'Node JS',
        type: 'JS Runtime',
        isBig: false
    ),
    TechnologyStackModel(
        imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/40/b2/40b2f185-94a6-4adb-aa16-684de42fbecd/elasticsearch.png',
        name: 'Elasticsearch',
        type: 'Search Manager',
        isBig: false
    ),
    TechnologyStackModel(
        imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/cb/11/cb115dd3-21e0-404d-a6e3-5bd03627cf51/hyperledger-logo.png',
        name: 'Hyperledger',
        type: 'Blockchain',
        isBig: false
    ),
    TechnologyStackModel(
        imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/c6/59/c659d0a3-c8bc-49c9-b68e-d00354fb0604/ethereum-logo.png',
        name: 'Ethereum',
        type: 'Blockchain',
        isBig: true
    ),
    TechnologyStackModel(
        imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/90/0c/900cb4b0-a110-45d4-b4a5-edee34d99305/docker.png',
        name: 'Docker',
        type: 'System Loader',
        isBig: false
    ),
    TechnologyStackModel(
        imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/1d/ef/1def1f40-9e54-4337-a710-eaae2be950ce/grpc.png',
        name: 'gRPC',
        type: 'RPC Framework',
        isBig: true
    ),
  ];

List<TechnologyStackModel> phoneModelList = [
  TechnologyStackModel(
      imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/33/cc/33cc1121-1660-436a-b27b-b087f944b079/azure.png',
      name: 'Microsoft Azure',
      type: 'Cloud Service',
      isBig: true
  ),
  TechnologyStackModel(
      imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/cd/76/cd767942-f4a2-41a0-b52b-f734a64cf22c/net.png',
      name: '.NET Core',
      type: 'Web Framework',
      isBig: false
  ),
  TechnologyStackModel(
      imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/23/5c/235c6dd4-2bc6-4ef4-98df-d09b80083de1/laravel_256icon.png',
      name: 'PHP Laravel',
      type: 'Web Framework',
      isBig: false
  ),
  TechnologyStackModel(
      imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/bc/fd/bcfd20e9-6988-4e21-8262-9282f6ec0770/vue.png',
      name: 'Vue.js',
      type: 'JS Framework',
      isBig: true
  ),
  TechnologyStackModel(
      imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/89/81/898112a9-b23a-46ff-a7da-5d4abff43a92/2000px-python-logo-notext.png',
      name: 'Python',
      type: 'Language',
      isBig: true
  ),
  TechnologyStackModel(
      imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/6b/48/6b487469-a885-43e6-95fe-d93cb7f509d6/django.png',
      name: 'Django',
      type: 'Web Services',
      isBig: true
  ),
  TechnologyStackModel(
      imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/b8/b9/b8b981ab-f323-4eae-b1e9-db416a86cd4b/react-icon.png',
      name: 'React',
      type: 'JS Framework',
      isBig: true
  ),
  TechnologyStackModel(
      imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/5b/c6/5bc6e2e7-e573-4220-887a-ec77721268ae/flutter_icon.png',
      name: 'Flutter',
      type: 'Mobile App Framework',
      isBig: true
  ),
  TechnologyStackModel(
      imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/cb/d5/cbd588e9-aa59-4c04-a05b-635843e51d12/node.png',
      name: 'Node JS',
      type: 'JS Runtime',
      isBig: false
  ),

  TechnologyStackModel(
      imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/40/b2/40b2f185-94a6-4adb-aa16-684de42fbecd/elasticsearch.png',
      name: 'Elasticsearch',
      type: 'Search Manager',
      isBig: false
  ),
  TechnologyStackModel(
      imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/cb/11/cb115dd3-21e0-404d-a6e3-5bd03627cf51/hyperledger-logo.png',
      name: 'Hyperledger',
      type: 'Blockchain',
      isBig: false
  ),
  TechnologyStackModel(
      imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/90/0c/900cb4b0-a110-45d4-b4a5-edee34d99305/docker.png',
      name: 'Docker',
      type: 'System Loader',
      isBig: false
  ),
  TechnologyStackModel(
      imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/c6/59/c659d0a3-c8bc-49c9-b68e-d00354fb0604/ethereum-logo.png',
      name: 'Ethereum',
      type: 'Blockchain',
      isBig: true
  ),
  TechnologyStackModel(
      imageLink: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/1d/ef/1def1f40-9e54-4337-a710-eaae2be950ce/grpc.png',
      name: 'gRPC',
      type: 'RPC Framework',
      isBig: true
  ),
];
}

final TechnologyStackInfoProvider = Provider((_) => TechnologyStackInfo());
