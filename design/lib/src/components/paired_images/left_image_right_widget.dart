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
  final int widgetPercentage;
  final double gap;
  final EdgeInsetsGeometry? padding;
  final BoxDecoration? decoration;

  const LeftImageRightWidget({
    super.key,
    required this.pairedWidget,
    required this.imagePath,
    required this.imageType,
    this.verticalAlignment = RightWidgetVerticalAlignment.center,
    this.widgetPercentage = 50,
    this.gap = 0,
    this.padding,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      padding: padding,
      child: Row(
        crossAxisAlignment: _getVerticalAlignment(verticalAlignment),
        children: [
          Expanded(
            flex: 100 - _getRatio(widgetPercentage),
            child: BaseImage(
              imagePath: imagePath,
              imageType: imageType,
            ),
          ),
          _getGap(),
          Expanded(
            flex: _getRatio(widgetPercentage),
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

  int _getRatio(int widgetPercentage) {
    if(widgetPercentage > 90) {
      return 90;
    } else if (widgetPercentage < 10) {
      return 10;
    } else {
      return widgetPercentage;
    }
  }

  Widget _getGap() {
    if(gap < 1) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      width: gap,
      child: Container(),
    );
  }

}
