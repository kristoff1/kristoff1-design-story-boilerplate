import 'package:design/design.dart';
import 'package:flutter/material.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    const double horizontalIndent = 32;
    const double verticalGap = 18;
    return Theme(
      data: ThemeData(
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headlineSmall: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
          titleLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange),
          bodyMedium: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.black87),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      child: Scaffold(
        backgroundColor: const Color(0xfff6f4f1),
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
              padding: EdgeInsets.symmetric(
                  vertical: verticalGap, horizontal: horizontalIndent),
              leftWidget: TitledText(
                title: 'Titled Text',
                text: 'Titled Text. Description or Image Caption',
                textDirection: TitledTextDirection.left,
              ),
              rightWidget: TitledText(
                title: 'Titled Text',
                text: 'Titled Text. Description or Image Caption',
                textDirection: TitledTextDirection.left,
              ),
            ),
            const Divider(
                indent: horizontalIndent, endIndent: horizontalIndent),
            const BiWidgets(
              padding: EdgeInsets.symmetric(
                  vertical: verticalGap, horizontal: horizontalIndent),
              leftWidget: TitledText(
                title: 'Titled Text',
                text: 'Titled Text. Description or Image Caption',
                textDirection: TitledTextDirection.left,
              ),
              rightWidget: TitledText(
                title: 'Titled Text',
                text: 'Titled Text. Description or Image Caption',
                textDirection: TitledTextDirection.left,
              ),
            ),
            const Divider(
                indent: horizontalIndent, endIndent: horizontalIndent),
            const BiWidgets(
              padding: EdgeInsets.symmetric(
                  vertical: verticalGap, horizontal: horizontalIndent),
              leftWidget: TitledText(
                title: 'Titled Text',
                text: 'Titled Text. Description or Image Caption',
                textDirection: TitledTextDirection.left,
              ),
              rightWidget: TitledText(
                title: 'Titled Text',
                text: 'Titled Text. Description or Image Caption',
                textDirection: TitledTextDirection.left,
              ),
            ),
            const Divider(
                indent: horizontalIndent, endIndent: horizontalIndent),
            const BiWidgets(
              padding: EdgeInsets.symmetric(
                  vertical: verticalGap, horizontal: horizontalIndent),
              leftWidget: TitledText(
                title: 'Titled Text',
                text: 'Titled Text. Description or Image Caption',
                textDirection: TitledTextDirection.left,
              ),
              rightWidget: TitledText(
                title: 'Titled Text',
                text: 'Titled Text. Description or Image Caption',
                textDirection: TitledTextDirection.left,
              ),
            ),
            const Divider(
                indent: horizontalIndent, endIndent: horizontalIndent),
          ],
        ),
      ),
    );
  }
}
