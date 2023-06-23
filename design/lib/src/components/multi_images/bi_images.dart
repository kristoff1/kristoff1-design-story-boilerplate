import 'package:flutter/material.dart';

import '../../atoms/images/base_images.dart';
import '../../atoms/images/image_types.dart';

class BiImages extends StatelessWidget {
  final String leftImagePath;
  final ImageTypes leftImageType;
  final String rightImagePath;
  final ImageTypes rightImageType;

  const BiImages({
    super.key,
    required this.leftImagePath,
    required this.leftImageType,
    required this.rightImagePath,
    required this.rightImageType,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: BaseImage(
            imagePath: leftImagePath,
            imageType: leftImageType,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: BaseImage(
            imagePath: rightImagePath,
            imageType: rightImageType,
          ),
        ),
      ],
    );
  }
}
