import 'package:flutter/material.dart';
import '../../atoms/images/base_images.dart';
import '../../atoms/images/image_types.dart';

class TriImagesLeftToRight extends StatelessWidget {

  final String mainImagePath;
  final ImageTypes mainImageType;
  final String topRightImagePath;
  final ImageTypes topRightImageType;
  final String bottomRightImagePath;
  final ImageTypes bottomRightImageType;
  final double? height;

  const TriImagesLeftToRight({
    super.key,
    required this.mainImagePath,
    required this.mainImageType,
    required this.topRightImagePath,
    required this.topRightImageType,
    required this.bottomRightImagePath,
    required this.bottomRightImageType,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Row(
        children: [
          Expanded(
            child: BaseImage(
              imagePath: bottomRightImagePath,
              imageType: bottomRightImageType,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: BaseImage(
                    imagePath: mainImagePath,
                    imageType: mainImageType,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Expanded(
                  child: BaseImage(
                    imagePath: topRightImagePath,
                    imageType: topRightImageType,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}