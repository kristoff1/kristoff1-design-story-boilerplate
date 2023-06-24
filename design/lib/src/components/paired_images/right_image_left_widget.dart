import 'package:flutter/material.dart';

import '../../atoms/images/base_images.dart';
import '../../atoms/images/image_types.dart';

class RightImageLeftWidget extends StatelessWidget {
  final Widget pairedWidget;
  final String imagePath;
  final ImageTypes imageType;

  const RightImageLeftWidget({
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
}
