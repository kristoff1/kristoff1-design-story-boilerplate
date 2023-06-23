import 'package:flutter/material.dart';
import 'base_images.dart';
import 'image_types.dart';

class RoundedImage extends StatelessWidget {
  final String imagePath;
  final ImageTypes imageType;
  final double radius;
  final String? package;
  final BoxFit? fit;
  final double? height;

  const RoundedImage({
    super.key,
    required this.imagePath,
    required this.imageType,
    required this.radius,
    required this.package,
    required this.fit,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(radius),
      ),
      child: BaseImage(
        imagePath: imagePath,
        imageType: imageType,
        package: package,
        fit: fit,
        height: height,
      ),
    );
  }
}
