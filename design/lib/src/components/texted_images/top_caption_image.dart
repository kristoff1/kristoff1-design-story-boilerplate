import 'package:flutter/material.dart';

import '../../atoms/images/base_images.dart';
import '../../atoms/images/image_types.dart';

class TopCaptionImage extends StatelessWidget {

  final String caption;
  final String imagePath;
  final ImageTypes imageType;

  const TopCaptionImage({
    super.key,
    required this.caption,
    required this.imagePath,
    required this.imageType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(caption),
        const SizedBox(
          height: 12,
        ),
        Expanded(
          child: BaseImage(
            imagePath: imagePath,
            imageType: imageType,
          ),
        ),
      ],
    );
  }

}