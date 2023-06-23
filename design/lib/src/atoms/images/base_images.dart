import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';

import 'image_types.dart';

class BaseImage extends StatelessWidget {
  final String imagePath;
  final ImageTypes imageType;
  final String? package;
  final BoxFit? fit;
  final double? height;

  const BaseImage({
    super.key,
    required this.imagePath,
    required this.imageType,
    this.package,
    this.fit,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return _getImage(imageType, imagePath);
  }

  Widget _getImage(ImageTypes imageType, String imagePath) {
    switch (imageType) {
      case ImageTypes.asset:
        return Image.asset(
          fit: fit,
          height: height,
          imagePath,
          package: package,
        );
      case ImageTypes.network:
        return Image.network(
          imagePath,
          fit: fit,
          height: height,
        );
      case ImageTypes.file:
        return Image.file(
          File(imagePath),
          fit: fit,
          height: height,
        );
      case ImageTypes.memory:
        return Image.memory(
          _convertImagePathToUint8List(imagePath),
          fit: fit,
          height: height,
        );
      case ImageTypes.none:
        return Container();
    }
  }

  Uint8List _convertImagePathToUint8List(String imagePath) {
    final File imageFile = File(imagePath);
    final Uint8List bytes = imageFile.readAsBytesSync();
    return bytes;
  }
}
