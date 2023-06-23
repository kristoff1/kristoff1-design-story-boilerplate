import 'package:flutter/material.dart';

import '../../atoms/images/base_images.dart';
import '../../atoms/images/image_types.dart';

class BottomCaptionImage extends StatelessWidget {

  final String caption;
  final String imagePath;
  final ImageTypes imageType;
  final double? height;

  const BottomCaptionImage({
    super.key,
    required this.caption,
    required this.imagePath,
    required this.imageType,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(
        children: [
          Expanded(
            child: BaseImage(
              imagePath: imagePath,
              imageType: imageType,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(caption),
        ],
      ),
    );
  }

}