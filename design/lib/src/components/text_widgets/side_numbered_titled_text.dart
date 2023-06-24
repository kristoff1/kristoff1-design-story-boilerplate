import 'package:flutter/material.dart';

enum SideNumberedTitledTextDirection {
  left,
  right,
  center,
  stretch,
}

class SideNumberedTitledText extends StatelessWidget {
  final String number;
  final String text;
  final String title;
  final SideNumberedTitledTextDirection textDirection;
  final BoxDecoration? decoration;

  const SideNumberedTitledText({
    super.key,
    required this.number,
    required this.text,
    required this.title,
    this.textDirection = SideNumberedTitledTextDirection.left,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: _getTextDirection(textDirection),
        children: [
          Text(
            number,
            textAlign: _getTextAlign(textDirection),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  textAlign: _getTextAlign(textDirection),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  text,
                  textAlign: _getTextAlign(textDirection),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  MainAxisAlignment _getTextDirection(
    SideNumberedTitledTextDirection textDirection,
  ) {
    switch (textDirection) {
      case SideNumberedTitledTextDirection.left:
        return MainAxisAlignment.start;
      case SideNumberedTitledTextDirection.right:
        return MainAxisAlignment.end;
      case SideNumberedTitledTextDirection.center:
        return MainAxisAlignment.center;
      case SideNumberedTitledTextDirection.stretch:
        return MainAxisAlignment.spaceBetween;
    }
  }

  TextAlign _getTextAlign(SideNumberedTitledTextDirection textDirection) {
    switch (textDirection) {
      case SideNumberedTitledTextDirection.left:
        return TextAlign.left;
      case SideNumberedTitledTextDirection.right:
        return TextAlign.right;
      case SideNumberedTitledTextDirection.center:
        return TextAlign.center;
      case SideNumberedTitledTextDirection.stretch:
        return TextAlign.justify;
    }
  }
}
