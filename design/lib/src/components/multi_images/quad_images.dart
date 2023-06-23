import 'package:flutter/material.dart';

import '../../atoms/images/base_images.dart';
import '../../atoms/images/image_types.dart';

class QuadImages extends StatelessWidget {

  final String topLeftImagePath;
  final ImageTypes topLeftImageType;
  final String topRightImagePath;
  final ImageTypes topRightImageType;
  final String bottomLeftImagePath;
  final ImageTypes bottomLeftImageType;
  final String bottomRightImagePath;
  final ImageTypes bottomRightImageType;
  final double? height;

  const QuadImages({
    super.key,
    required this.topLeftImagePath,
    required this.topLeftImageType,
    required this.topRightImagePath,
    required this.topRightImageType,
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
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: BaseImage(
                    imagePath: topLeftImagePath,
                    imageType: topLeftImageType,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Expanded(
                    child: BaseImage(
                  imagePath: bottomLeftImagePath,
                  imageType: bottomLeftImageType,
                )),
              ],
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
                    imagePath: topRightImagePath,
                    imageType: topRightImageType,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Expanded(
                    child: BaseImage(
                  imagePath: bottomRightImagePath,
                  imageType: bottomRightImageType,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }

}