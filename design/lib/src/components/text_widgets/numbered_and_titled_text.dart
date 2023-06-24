import 'package:flutter/material.dart';

enum NumberedAndTextDirection {
  left,
  right,
  center,
}

class NumberedAndTitleText extends StatelessWidget {
  final String number;
  final String text;
  final String title;
  final NumberedAndTextDirection textDirection;
  final BoxDecoration? decoration;

  const NumberedAndTitleText({
    super.key,
    required this.number,
    required this.text,
    required this.title,
    this.textDirection = NumberedAndTextDirection.left,
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

  CrossAxisAlignment _getTextDirection(NumberedAndTextDirection textDirection) {
    switch (textDirection) {
      case NumberedAndTextDirection.left:
        return CrossAxisAlignment.start;
      case NumberedAndTextDirection.right:
        return CrossAxisAlignment.end;
      case NumberedAndTextDirection.center:
        return CrossAxisAlignment.center;
    }
  }

  TextAlign _getTextAlign(NumberedAndTextDirection textDirection) {
    switch (textDirection) {
      case NumberedAndTextDirection.left:
        return TextAlign.left;
      case NumberedAndTextDirection.right:
        return TextAlign.right;
      case NumberedAndTextDirection.center:
        return TextAlign.center;
    }
  }
}
