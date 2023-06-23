import 'package:design/design.dart';
import 'package:flutter/material.dart';

class ComponentImageShowcase extends StatelessWidget {
  const ComponentImageShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    double itemHeight = MediaQuery.of(context).size.height / 3;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Component Images Showcase'),
      ),
      body: ListView(
        children: [
          const LeftImageRightText(
            text: 'Left Image Right Text. Description or Image Caption',
            imagePath: 'assets/images/placeholder.png',
            imageType: ImageTypes.asset,
          ),
          const Divider(),
          const RightImageLeftText(
            text: 'Right Image Left Text. Description or Image Caption',
            imagePath: 'assets/images/placeholder.png',
            imageType: ImageTypes.asset,
          ),
          const Divider(),
          BottomCaptionImage(
            caption: 'Bottom Caption Image. Description or Image Caption',
            imagePath: 'assets/images/placeholder.png',
            imageType: ImageTypes.asset,
            height: itemHeight,
          ),
          const Divider(),
          const BiImages(
              leftImagePath: 'assets/images/placeholder.png',
              leftImageType: ImageTypes.asset,
              rightImagePath: 'assets/images/placeholder.png',
              rightImageType: ImageTypes.asset),
          const Divider(),
          TriImagesLeftToRight(
            mainImagePath: 'assets/images/placeholder.png',
            mainImageType: ImageTypes.asset,
            topRightImagePath: 'assets/images/placeholder.png',
            topRightImageType: ImageTypes.asset,
            bottomRightImagePath: 'assets/images/placeholder.png',
            bottomRightImageType: ImageTypes.asset,
            height: itemHeight,
          ),
          const Divider(),
          TriImagesRightToLeft(
            mainImagePath: 'assets/images/placeholder.png',
            mainImageType: ImageTypes.asset,
            topRightImagePath: 'assets/images/placeholder.png',
            topRightImageType: ImageTypes.asset,
            bottomRightImagePath: 'assets/images/placeholder.png',
            bottomRightImageType: ImageTypes.asset,
            height: itemHeight,
          ),
          const Divider(),
          TriImagesTopToBottom(
            mainImagePath: 'assets/images/placeholder.png',
            mainImageType: ImageTypes.asset,
            bottomLeftImagePath: 'assets/images/placeholder.png',
            bottomLeftImageType: ImageTypes.asset,
            bottomRightImagePath: 'assets/images/placeholder.png',
            bottomRightImageType: ImageTypes.asset,
            height: itemHeight,
          ),
          const Divider(),
          TriImagesBottomToTop(
            mainImagePath: 'assets/images/placeholder.png',
            mainImageType: ImageTypes.asset,
            bottomLeftImagePath: 'assets/images/placeholder.png',
            bottomLeftImageType: ImageTypes.asset,
            bottomRightImagePath: 'assets/images/placeholder.png',
            bottomRightImageType: ImageTypes.asset,
            height: itemHeight,
          ),
          const Divider(),
          const DominantImage(
            imagePath: 'assets/images/placeholder.png',
            imageType: ImageTypes.asset,
          ),
          const Divider(),
          QuadImages(
            topLeftImagePath: 'assets/images/placeholder.png',
            topLeftImageType: ImageTypes.asset,
            topRightImagePath: 'assets/images/placeholder.png',
            topRightImageType: ImageTypes.asset,
            bottomLeftImagePath: 'assets/images/placeholder.png',
            bottomLeftImageType: ImageTypes.asset,
            bottomRightImagePath: 'assets/images/placeholder.png',
            bottomRightImageType: ImageTypes.asset,
            height: itemHeight,
          ),
          const Divider(),
          StarImages(
            topLeftImagePath: 'assets/images/placeholder.png',
            topLeftImageType: ImageTypes.asset,
            topRightImagePath: 'assets/images/placeholder.png',
            topRightImageType: ImageTypes.asset,
            bottomLeftImagePath: 'assets/images/placeholder.png',
            bottomLeftImageType: ImageTypes.asset,
            bottomRightImagePath: 'assets/images/placeholder.png',
            bottomRightImageType: ImageTypes.asset,
            centerImagePath: 'assets/images/placeholder.png',
            centerImageType: ImageTypes.asset,
            height: itemHeight,
          ),
        ],
      ),
    );
  }
}
