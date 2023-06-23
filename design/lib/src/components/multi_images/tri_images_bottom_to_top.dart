import 'package:flutter/material.dart';

import '../../atoms/images/base_images.dart';
import '../../atoms/images/image_types.dart';

class TriImagesBottomToTop extends StatelessWidget {

  final String mainImagePath;
  final ImageTypes mainImageType;
  final String bottomLeftImagePath;
  final ImageTypes bottomLeftImageType;
  final String bottomRightImagePath;
  final ImageTypes bottomRightImageType;
  final double? height;

  const TriImagesBottomToTop({
    super.key,
    required this.mainImagePath,
    required this.mainImageType,
    required this.bottomLeftImagePath,
    required this.bottomLeftImageType,
    required this.bottomRightImagePath,
    required this.bottomRightImageType,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BaseImage(
                    imagePath: bottomLeftImagePath,
                    imageType: bottomLeftImageType,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: BaseImage(
                    imagePath: bottomRightImagePath,
                    imageType: bottomRightImageType,
                  )
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Expanded(
            child: BaseImage(
              imagePath: mainImagePath,
              imageType: mainImageType,
            ),
          ),
        ],
      ),
    );
  }

}