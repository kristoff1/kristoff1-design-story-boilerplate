import 'package:flutter/material.dart';

import '../../atoms/images/base_images.dart';
import '../../atoms/images/image_types.dart';

class LeftImageRightWidget extends StatelessWidget {
  final Widget pairedWidget;
  final String imagePath;
  final ImageTypes imageType;

  const LeftImageRightWidget({
    super.key,
    required this.pairedWidget,
    required this.imagePath,
    required this.imageType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
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
}
