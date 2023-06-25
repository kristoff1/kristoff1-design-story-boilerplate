import 'package:flutter/material.dart';

import '../../atoms/images/base_images.dart';
import '../../atoms/images/image_types.dart';

///REPETITIVE SO IT CAN EASILY BE COPIED
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
  final BoxDecoration? decoration;

  const RightImageLeftWidget({
    super.key,
    required this.pairedWidget,
    required this.imagePath,
    required this.imageType,
    this.verticalAlignment = LeftWidgetVerticalAlignment.center,
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
            child: pairedWidget,
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
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
}
