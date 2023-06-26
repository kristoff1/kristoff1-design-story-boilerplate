import 'package:design/design.dart';
import 'package:flutter/material.dart';

enum ItemAlignment { left, right }

class HeroImageCaptioned extends StatelessWidget {
  final double height;
  final String imagePath;
  final ImageTypes heroImageType;
  final ItemAlignment alignment;
  final ImageTypes? brandImageType;
  final String? brandImagePath;
  final String? title;
  final String? subTitle;
  final BoxFit? fit;

  const HeroImageCaptioned({
    super.key,
    required this.height,
    required this.imagePath,
    required this.heroImageType,
    this.alignment = ItemAlignment.left,
    required this.brandImageType,
    this.brandImagePath,
    this.title,
    this.subTitle,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          BaseImage(
            height: height,
            imagePath: imagePath,
            imageType: heroImageType,
            fit: fit,
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: _getItemsAlignment(alignment),
              children: [
                _getBrandView(context, brandImagePath, brandImageType),
                _getTitleView(context, title),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _getBrandView(
      BuildContext context, String? imagePath, ImageTypes? brandImageType) {
    if (imagePath == null || brandImageType == null) {
      return const SizedBox.shrink();
    }
    return BaseImage(
      imagePath: imagePath,
      imageType: brandImageType,
      fit: BoxFit.contain,
      height: height * 0.25,
    );
  }

  Widget _getTitleView(BuildContext context, String? title) {
    if (title == null) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: _getItemsAlignment(alignment),
      children: [
        Text(
          title,
          textAlign: _getTextAlign(alignment),
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: 12,
        ),
        _getSubTitleView(context, subTitle),
      ],
    );
  }

  Widget _getSubTitleView(BuildContext context, String? subTitle) {
    if (subTitle == null) {
      return const SizedBox.shrink();
    }
    return Text(
      subTitle,
      textAlign: _getTextAlign(alignment),
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }

  CrossAxisAlignment _getItemsAlignment(ItemAlignment alignment) {
    switch (alignment) {
      case ItemAlignment.left:
        return CrossAxisAlignment.start;
      case ItemAlignment.right:
        return CrossAxisAlignment.end;
    }
  }

  TextAlign _getTextAlign(ItemAlignment alignment) {
    switch (alignment) {
      case ItemAlignment.left:
        return TextAlign.left;
      case ItemAlignment.right:
        return TextAlign.right;
    }
  }

}
