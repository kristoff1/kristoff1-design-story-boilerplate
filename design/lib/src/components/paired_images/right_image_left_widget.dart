import 'package:flutter/material.dart';

import '../../atoms/images/base_images.dart';
import '../../atoms/images/image_types.dart';

///REPETITIVE SO IT CAN BE EASILY COPIED
enum LeftWidgetVerticalAlignment {
  top,
  center,
  bottom,
  stretch,
}

class RightImageLeftWidget extends StatelessWidget {
  final Widget pairedWidget;
  final String imagePath;
  final ImageTypes imageType;
  final LeftWidgetVerticalAlignment verticalAlignment;
  final int widgetPercentage;
  final double gap;
  final EdgeInsetsGeometry? padding;
  final BoxDecoration? decoration;

  const RightImageLeftWidget({
    super.key,
    required this.pairedWidget,
    required this.imagePath,
    required this.imageType,
    this.verticalAlignment = LeftWidgetVerticalAlignment.center,
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
            flex: _getRatio(widgetPercentage),
            child: pairedWidget,
          ),
          _getGap(),
          Expanded(
            flex: 100 - _getRatio(widgetPercentage),
            child: BaseImage(
              imagePath: imagePath,
              imageType: imageType,
            ),
          ),
        ],
      ),
    );
  }

  CrossAxisAlignment _getVerticalAlignment(
      LeftWidgetVerticalAlignment verticalAlignment) {
    switch (verticalAlignment) {
      case LeftWidgetVerticalAlignment.top:
        return CrossAxisAlignment.start;
      case LeftWidgetVerticalAlignment.center:
        return CrossAxisAlignment.center;
      case LeftWidgetVerticalAlignment.bottom:
        return CrossAxisAlignment.end;
      case LeftWidgetVerticalAlignment.stretch:
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
