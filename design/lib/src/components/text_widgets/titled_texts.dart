import 'package:flutter/material.dart';

enum TitledTextDirection {
  left,
  right,
  center,
}

class TitledText extends StatelessWidget {
  final String text;
  final String title;
  final TitledTextDirection textDirection;
  final BoxDecoration? decoration;

  const TitledText({
    super.key,
    required this.text,
    required this.title,
    this.textDirection = TitledTextDirection.left,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: _getTextDirection(textDirection),
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
    );
  }

  CrossAxisAlignment _getTextDirection(TitledTextDirection textDirection) {
    switch (textDirection) {
      case TitledTextDirection.left:
        return CrossAxisAlignment.start;
      case TitledTextDirection.right:
        return CrossAxisAlignment.end;
      case TitledTextDirection.center:
        return CrossAxisAlignment.center;
    }
  }

  TextAlign _getTextAlign(TitledTextDirection textDirection) {
    switch (textDirection) {
      case TitledTextDirection.left:
        return TextAlign.left;
      case TitledTextDirection.right:
        return TextAlign.right;
      case TitledTextDirection.center:
        return TextAlign.center;
    }
  }
}
