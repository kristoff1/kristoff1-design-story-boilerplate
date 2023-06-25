import 'package:flutter/material.dart';
import 'package:design/design.dart';

class ImageAndWidgetTextShowcase extends StatelessWidget {
  const ImageAndWidgetTextShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          LeftImageRightWidget(
            pairedWidget: TitledText(
              title: 'Titled Text',
              text: 'Titled Text. Description or Image Caption',
            ),
            imagePath: 'assets/images/placeholder.png',
            imageType: ImageTypes.asset,
          ),
          Divider(),
          RightImageLeftWidget(
            pairedWidget: TitledText(
                text: 'Titled Text. Description or Image Caption',
                title: 'Titled Text'),
            imagePath: 'assets/images/placeholder.png',
            imageType: ImageTypes.asset,
          ),
          Divider(),
          LeftImageRightWidget(
            pairedWidget: NumberedText(
              number: '1',
              text: 'Numbered Text. Description or Image Caption',
              textDirection: NumberedTextDirection.left,
            ),
            imagePath: 'assets/images/placeholder.png',
            imageType: ImageTypes.asset,
          ),
          Divider(),
          RightImageLeftWidget(
            pairedWidget: NumberedText(
              number: '1',
              text: 'Numbered Text. Description or Image Caption',
              textDirection: NumberedTextDirection.right,
            ),
            imagePath: 'assets/images/placeholder.png',
            imageType: ImageTypes.asset,
          ),
          Divider(),
          LeftImageRightWidget(
            imagePath: 'assets/images/placeholder.png',
            imageType: ImageTypes.asset,
            pairedWidget: NumberedAndTitleText(
              number: '1',
              text: 'Numbered and Title Text. Description or Image Caption',
              title: 'Title',
              textDirection: NumberedAndTextDirection.left,
            ),
          ),
          Divider(),
          RightImageLeftWidget(
            imagePath: 'assets/images/placeholder.png',
            imageType: ImageTypes.asset,
            pairedWidget: NumberedAndTitleText(
              number: '1',
              text: 'Numbered and Title Text. Description or Image Caption',
              title: 'Title',
              textDirection: NumberedAndTextDirection.right,
            ),
          ),
        ],
      ),
    );
  }
}
