import 'package:design/design.dart';
import 'package:flutter/material.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          titleMedium: TextStyle(
              fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),
          bodyMedium: TextStyle(
              fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      child: Scaffold(
        body: ListView(
          children: [
            HeroImageCaptioned(
              title: 'Hero Image Captioned',
              subTitle: 'Hero Image Captioned. Description or Image Caption',
              height: MediaQuery.of(context).size.height * 0.3,
              imagePath: 'assets/images/hero_placeholder.jpg',
              heroImageType: ImageTypes.asset,
              alignment: ItemAlignment.left,
              fit: BoxFit.cover,
              brandImagePath: 'assets/images/cns_logo.png',
              brandImageType: ImageTypes.asset,
            ),
            const BiWidgets(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              leftWidget: TitledText(
                title: 'Titled Text',
                text: 'Titled Text. Description or Image Caption',
                textDirection: TitledTextDirection.center,
              ),
              rightWidget: TitledText(
                title: 'Titled Text',
                text: 'Titled Text. Description or Image Caption',
                textDirection: TitledTextDirection.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
