import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/services_page/sections/services_all_service_items/widgets/service_item.dart';

import 'info_provider/services_info_provider.dart';

class ServicesAllServiceItemsMain extends HookWidget {

@override
Widget build(BuildContext context) {
  final serviceModelList = useProvider(ServicesInfoProvider).modelList;

  return Column(
    mainAxisSize: MainAxisSize.min,
    children: serviceModelList.map((e) =>
    ServiceItem(serviceModel: e, isReverse: serviceModelList.indexOf(e) % 2 == 0 ? false : true,)
    ).toList(),
  );
}}
