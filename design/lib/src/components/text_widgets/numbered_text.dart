import 'package:flutter/material.dart';

enum NumberedTextDirection {
  left,
  right,
  center,
}

class NumberedText extends StatelessWidget {
  final String text;
  final String number;
  final NumberedTextDirection textDirection;
  final BoxDecoration? decoration;

  const NumberedText({
    super.key,
    required this.text,
    required this.number,
    this.textDirection = NumberedTextDirection.left,
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
            number,
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

  CrossAxisAlignment _getTextDirection(NumberedTextDirection textDirection) {
    switch (textDirection) {
      case NumberedTextDirection.left:
        return CrossAxisAlignment.start;
      case NumberedTextDirection.right:
        return CrossAxisAlignment.end;
      case NumberedTextDirection.center:
        return CrossAxisAlignment.center;
    }
  }

  TextAlign _getTextAlign(NumberedTextDirection textDirection) {
    switch (textDirection) {
      case NumberedTextDirection.left:
        return TextAlign.left;
      case NumberedTextDirection.right:
        return TextAlign.right;
      case NumberedTextDirection.center:
        return TextAlign.center;
    }
  }
}
