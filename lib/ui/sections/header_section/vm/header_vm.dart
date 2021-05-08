import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/constants/application_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderVM extends ChangeNotifier{
  bool isScrolled = false;
  bool isDrawerOpen = false;

  setScrollStatus(bool status){
    if(isScrolled!=status){
      isScrolled = status;
      notifyListeners();
    }
  }
  toggleDrawer(){
    isDrawerOpen = !isDrawerOpen;
    notifyListeners();
  }
  sendMail(){
    final Uri _emailLaunchUri = Uri(
        scheme: 'mailto',
        path: ApplicationConstants.RADITY_MAIL,
        queryParameters: {
          'subject': 'Mail to radity'
        }
    );
    launch(_emailLaunchUri.toString());
  }
}

final headerVMProvider = ChangeNotifierProvider((_)=> HeaderVM());