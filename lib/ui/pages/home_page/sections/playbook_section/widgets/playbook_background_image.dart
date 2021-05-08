import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/core/constants/string_constants_manager.dart';
import 'package:radity_website_clone/core/extensions/context_extensions.dart';
import 'package:radity_website_clone/core/extensions/theme_extensions.dart';

class PlaybookBackgroundImage extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final imageProvider = useProvider(stringConstantsProvider);

    Widget _buildMiddleContainer(){
      return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 195,
            margin: EdgeInsets.symmetric(horizontal: 85),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromRGBO(207, 207, 207, 0.2),
                      Color.fromRGBO(206, 206, 206, 0.19),
                      Color.fromRGBO(255, 255, 255, 0),
                    ],
                    stops: [0,0.42,0.8]
                )
            ),
          ),
          Positioned(
            top: 0,
            left: 50,
            child: Image.network(imageProvider.playbookMiddleContainerImages[0], width: 35, height: 195,),
          ),
          Positioned(
            top: 0,
            right: 50,
            child: Image.network(imageProvider.playbookMiddleContainerImages[1], width: 35, height: 195,),
          )

        ],
      );
    }

    Widget _buildSymmetricContainer(BuildContext context, bool isLeft) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: context.theme.colorScheme.silver
                            .withOpacity(0.4)))),
          ),
          isLeft ? Positioned(
            right: -26,
            child: Image.network(imageProvider.playbookSymmetricContainerImages[0], width: 25, height: 90,),
          ) :
          Positioned(
            left: -26,
            child: Image.network(imageProvider.playbookSymmetricContainerImages[1], width: 25, height: 90,),
          )

        ],
      );
    }

    return Container(
      width: context.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: _buildSymmetricContainer(context,true),
          ),
          Flexible(
            flex: 2,
            child: Container(
              constraints: BoxConstraints(maxWidth: 870),
                child: _buildMiddleContainer()),
          ),
          Flexible(
            child: _buildSymmetricContainer(context,false),
          )
        ],
      ),
    );
  }


}
