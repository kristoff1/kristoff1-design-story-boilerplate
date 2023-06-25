import 'package:flutter/material.dart';

import '../../atoms/images/base_images.dart';
import '../../atoms/images/image_types.dart';

///REPETITIVE SO IT CAN EASILY BE COPIED
enum RightWidgetVerticalAlignment {
  top,
  center,
  bottom,
  //If stretch make sure to wrap the widget in a sized or expanded widget
  stretch,
}

class LeftImageRightWidget extends StatelessWidget {
  final Widget pairedWidget;
  final String imagePath;
  final ImageTypes imageType;
  final RightWidgetVerticalAlignment verticalAlignment;
  final BoxDecoration? decoration;

  const LeftImageRightWidget({
    super.key,
    required this.pairedWidget,
    required this.imagePath,
    required this.imageType,
    this.verticalAlignment = RightWidgetVerticalAlignment.center,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: _getVerticalAlignment(verticalAlignment),
        children: [
          Expanded(
            child: BaseImage(
              imagePath: imagePath,
              imageType: imageType,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: pairedWidget,
          ),
        ],
      ),
    );
  }

  CrossAxisAlignment _getVerticalAlignment(
      RightWidgetVerticalAlignment verticalAlignment) {
    switch (verticalAlignment) {
      case RightWidgetVerticalAlignment.top:
        return CrossAxisAlignment.start;
      case RightWidgetVerticalAlignment.center:
        return CrossAxisAlignment.center;
      case RightWidgetVerticalAlignment.bottom:
        return CrossAxisAlignment.end;
      case RightWidgetVerticalAlignment.stretch:
        return CrossAxisAlignment.stretch;
    }
  }
}
