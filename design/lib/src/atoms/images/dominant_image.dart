import 'package:design/design.dart';
import 'package:flutter/material.dart';

class DominantImage extends StatelessWidget {
  final String imagePath;
  final ImageTypes imageType;

  const DominantImage({
    super.key,
    required this.imagePath,
    required this.imageType,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width,
      child: BaseImage(imagePath: imagePath, imageType: imageType),
    );
  }

}