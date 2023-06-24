import 'package:design/design.dart';
import 'package:flutter/material.dart';

class LetterSizedComponentsShowcase extends StatelessWidget {
  const LetterSizedComponentsShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InteractiveViewer(
          constrained: false,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 1.3,
            height: MediaQuery.of(context).size.height,
            child: const Column(
              children: [
                Expanded(
                  flex: 25,
                  child: LeftImageRightText(
                    text: 'Left Image Right Text. Description or Image Caption',
                    imagePath: 'assets/images/placeholder.png',
                    imageType: ImageTypes.asset,
                  ),
                ),
                Divider(),
                Expanded(
                  flex: 25,
                  child: RightImageLeftText(
                    text: 'Right Image Left Text. Description or Image Caption',
                    imagePath: 'assets/images/placeholder.png',
                    imageType: ImageTypes.asset,
                  ),
                ),
                Divider(),
                Expanded(
                  flex: 25,
                  child: TriImagesTopToBottom(
                    mainImagePath: 'assets/images/placeholder.png',
                    mainImageType: ImageTypes.asset,
                    bottomLeftImagePath: 'assets/images/placeholder.png',
                    bottomLeftImageType: ImageTypes.asset,
                    bottomRightImagePath: 'assets/images/placeholder.png',
                    bottomRightImageType: ImageTypes.asset,
                  ),
                ),
                Divider(),
                Expanded(
                  flex: 25,
                  child: TriImagesLeftToRight(
                    mainImagePath: 'assets/images/placeholder.png',
                    mainImageType: ImageTypes.asset,
                    topRightImagePath: 'assets/images/placeholder.png',
                    topRightImageType: ImageTypes.asset,
                    bottomRightImagePath: 'assets/images/placeholder.png',
                    bottomRightImageType: ImageTypes.asset,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
