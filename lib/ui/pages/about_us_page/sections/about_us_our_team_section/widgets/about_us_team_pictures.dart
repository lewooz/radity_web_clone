import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/hooks/use_%20responsive.dart';
import 'package:radity_website_clone/ui/pages/about_us_page/sections/about_us_our_team_section/info_provider/about_us_our_team_section_info_provider.dart';

class AboutUsTeamPictures extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final imageList = useProvider(AboutUsOurTeamInfoProvider).imageLinkList;

    Expanded _buildImage(int imageIndex, {int? flex}) {
      return Expanded(
        flex: flex ?? 1,
        child: Image.network(
          imageList[imageIndex],
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      );
    }

    _buildFirstRow() {
      return Expanded(
        child: Row(
          children: [
            _buildImage(0),
            SizedBox(width: 10,),
            Expanded(
                child: Column(
              children: [
                _buildImage(1),
                SizedBox(
                  height: 10,
                ),
                _buildImage(2)
              ],
            )),
            SizedBox(width: 10,),
            _buildImage(3),
          ],
        ),
      );
    }

    _buildSecondRow() {
      return Expanded(
        child: Row(
          children: [
            _buildImage(4),
            SizedBox(
              width: 10,
            ),
            _buildImage(5, flex: 2),
          ],
        ),
      );
    }

    _buildThirdRow() {
      return Expanded(
        child: Row(
          children: [
            _buildImage(6),
            SizedBox(
              width: 10,
            ),
            _buildImage(7),
            SizedBox(
              width: 10,
            ),
            _buildImage(8),
          ],
        ),
      );
    }

    _buildPhoneFirstRow(){
      return Expanded(
        child: Row(
          children: [
            _buildImage(0),
            SizedBox(width: 10,),
            Expanded(
                child: Column(
                  children: [
                    _buildImage(1),
                    SizedBox(
                      height: 10,
                    ),
                    _buildImage(2)
                  ],
                )
            ),
          ],
        ),
      );
    }

    _buildPhoneDoubleImageRow(int indexOne, int indexTwo) {
      return Expanded(
        child: Row(
          children: [
            _buildImage(indexOne),
            SizedBox(
              width: 10,
            ),
            _buildImage(indexTwo),
          ],
        ),
      );
    }
      _buildPhoneOneImageRow(int index ){
        return Expanded(
          child: Row(
            children: [
              _buildImage(index),
            ],
          ),
        );
      }

      List<Widget> _buildResponsiveImages(){
        return useResponsive(largeDesktopValue: [
          _buildFirstRow(),
          SizedBox(height: 10,),
          _buildSecondRow(),
          SizedBox(height: 10,),
          _buildThirdRow()
        ],
          phone: [
            _buildPhoneFirstRow(),
            SizedBox(height: 10,),
            _buildPhoneDoubleImageRow(3, 4),
            SizedBox(height: 10,),
            _buildPhoneOneImageRow(5),
            SizedBox(height: 10,),
            _buildPhoneDoubleImageRow(6, 8),
            SizedBox(height: 10,),
            _buildPhoneOneImageRow(7),
          ]
        );
      }

    return AspectRatio(
      aspectRatio: useResponsive(largeDesktopValue: 1.004, phone: 0.5213),
      child: Container(
          margin: EdgeInsets.only(top: 60),
          width: double.infinity,
          child: Column(
            children: _buildResponsiveImages(),
          )),
    );
  }
}
