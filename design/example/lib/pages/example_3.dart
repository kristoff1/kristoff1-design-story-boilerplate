import 'package:design/design.dart';
import 'package:flutter/material.dart';

class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      child: Scaffold(
        backgroundColor: const Color(0xFFEDDDC6),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              height: MediaQuery.of(context).size.height * 0.25,
              child: const BiWidgets(
                leftWidgetPercentage: 15,
                leftWidget: SquareNumberingWidget(
                  number: 1,
                  shadows: Shadows.cardShadow,
                  backgroundColor: Colors.white,
                  radiusValue: 8,
                  paddingValue: 12,
                ),
                gap: 12,
                rightWidget: TitledText(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: ContainerDecoration.whiteCardDecoration,
                  title: 'Titled Text',
                  gap: 4,
                  text: 'Titled Text. Description or Image Caption',
                  textDirection: TitledTextDirection.left,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              height: MediaQuery.of(context).size.height * 0.25,
              child: BiWidgets(
                leftWidgetPercentage: 15,
                leftWidget: const SquareNumberingWidget(
                  number: 2,
                  shadows: Shadows.cardShadow,
                  backgroundColor: Colors.white,
                  radiusValue: 8,
                  paddingValue: 12,
                ),
                gap: 12,
                rightWidget: Container(
                  decoration: ContainerDecoration.whiteCardDecoration,
                  child: const SvgSingleIconRating(
                    rating: 4.5,
                    icon: 'assets/icons/star.svg',
                    unFilledColors: Colors.blueGrey,
                    maximumLimit: SvgSingleIconRatingMaximum.fiveMax,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              height: MediaQuery.of(context).size.height * 0.25,
              child: BiWidgets(
                leftWidgetPercentage: 15,
                leftWidget: const SquareNumberingWidget(
                  number: 3,
                  shadows: Shadows.cardShadow,
                  backgroundColor: Colors.white,
                  radiusValue: 8,
                  paddingValue: 12,
                ),
                gap: 12,
                rightWidget: Container(
                  decoration: ContainerDecoration.whiteCardDecoration,
                  child: const SvgSingleIconRating(
                    rating: 3.5,
                    icon: 'assets/icons/star.svg',
                    unFilledColors: Colors.blueGrey,
                    maximumLimit: SvgSingleIconRatingMaximum.fiveMax,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
