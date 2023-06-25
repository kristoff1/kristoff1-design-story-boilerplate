import 'package:design/design.dart';
import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
              fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: const RightImageLeftWidget(
                verticalAlignment: LeftWidgetVerticalAlignment.stretch,
                pairedWidget: TitledText(
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    text: 'Titled Text. Description or Image Caption',
                    title: 'Titled Text'),
                imagePath: 'assets/images/placeholder.png',
                imageType: ImageTypes.asset,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: const LeftImageRightWidget(
                verticalAlignment: RightWidgetVerticalAlignment.stretch,
                pairedWidget: TitledText(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  title: 'Titled Text',
                  text: 'Titled Text. Description or Image Caption',
                ),
                imagePath: 'assets/images/placeholder.png',
                imageType: ImageTypes.asset,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: const RightImageLeftWidget(
                verticalAlignment: LeftWidgetVerticalAlignment.stretch,
                pairedWidget: TitledText(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    text: 'Titled Text. Description or Image Caption',
                    title: 'Titled Text'),
                imagePath: 'assets/images/placeholder.png',
                imageType: ImageTypes.asset,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
