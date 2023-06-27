import 'package:design/design.dart';
import 'package:flutter/material.dart';

class Example4 extends StatelessWidget {
  const Example4({super.key});

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
        backgroundColor: const Color(0xfff6f4f1),
        body: ListView(
          children: [
            const OverdrawComponents(
              overdrawWidget: BaseImage(
                  imagePath: 'assets/images/placeholder.png',
                  imageType: ImageTypes.asset,
                  height: 180),
              companionWidget: TitledText(
                title: 'Titled Text',
                text: 'Titled Text. Description or Image Caption',
                textDirection: TitledTextDirection.right,
              ),
              containerDecoration: ContainerDecoration.whiteCardDecoration,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              height: MediaQuery.of(context).size.height * 0.15,
              child: const HorizontallyConnectedWidget(
                  leftWidget: TitledText(
                      text: 'Titled Text. Description or Image Caption',
                      title: 'Titled Text'),
                  rightWidget: TitledText(
                      text: 'Titled Text. Description or Image Caption',
                      title: 'Titled Text'),
                  connectorWidget: SingleHorizontalDirection(
                    direction: HorizontalDirection.right,
                    gap: 8,
                  )),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              height: MediaQuery.of(context).size.height * 0.15,
              child: const HorizontallyConnectedWidget(
                  leftWidget: TitledText(
                      text: 'Titled Text. Description or Image Caption',
                      title: 'Titled Text'),
                  rightWidget: TitledText(
                      text: 'Titled Text. Description or Image Caption',
                      title: 'Titled Text'),
                  connectorWidget: SingleHorizontalDirection(
                    direction: HorizontalDirection.left,
                    gap: 8,
                  )),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              height: MediaQuery.of(context).size.height * 0.15,
              child: const HorizontallyConnectedWidget(
                leftWidget: TitledText(
                    text: 'Titled Text. Description or Image Caption',
                    title: 'Titled Text'),
                rightWidget: TitledText(
                    text: 'Titled Text. Description or Image Caption',
                    title: 'Titled Text'),
                connectorWidget: DoubleHorizontalDirection(
                  horizontalGap: 8,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              height: MediaQuery.of(context).size.height * 0.15,
              child: const HorizontallyConnectedWidget(
                leftWidget: TitledText(
                    text: 'Titled Text. Description or Image Caption',
                    title: 'Titled Text'),
                rightWidget: TitledText(
                    text: 'Titled Text. Description or Image Caption',
                    title: 'Titled Text'),
                connectorWidget: DoubleHorizontalDirection(
                  horizontalGap: 8,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: const VerticallyConnectedWidget(
                topWidget: TitledText(
                  text: 'Titled Text. Description or Image Caption',
                  title: 'Titled Text',
                  textDirection: TitledTextDirection.center,
                ),
                connectorWidget: SingleVerticalDirection(
                  gap: 8,
                  direction: ConnectorVerticalDirection.down,
                ),
                bottomWidget: TitledText(
                  text: 'Titled Text. Description or Image Caption',
                  title: 'Titled Text',
                  textDirection: TitledTextDirection.center,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: const VerticallyConnectedWidget(
                topWidget: TitledText(
                  text: 'Titled Text. Description or Image Caption',
                  title: 'Titled Text',
                  textDirection: TitledTextDirection.center,
                ),
                connectorWidget: DoubleVerticalDirection(
                  verticalGap: 8,
                ),
                bottomWidget: TitledText(
                  text: 'Titled Text. Description or Image Caption',
                  title: 'Titled Text',
                  textDirection: TitledTextDirection.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
