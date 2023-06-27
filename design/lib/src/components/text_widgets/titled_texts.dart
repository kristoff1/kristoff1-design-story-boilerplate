import 'package:flutter/material.dart';

enum TitledTextDirection {
  left,
  right,
  center,
}

enum TextVerticalAlignment {
  top,
  center,
  bottom,
  stretch,
}

class TitledText extends StatelessWidget {
  final String text;
  final String title;
  final TitledTextDirection textDirection;
  final TextVerticalAlignment verticalAlignment;
  final double? gap;
  final BorderRadius? borderRadius;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;

  const TitledText({
    super.key,
    required this.text,
    required this.title,
    this.textDirection = TitledTextDirection.left,
    this.verticalAlignment = TextVerticalAlignment.center,
    this.gap,
    this.borderRadius,
    this.decoration,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      padding: padding,
      child: Column(
        mainAxisAlignment: _getVerticalAlignment(verticalAlignment),
        crossAxisAlignment: _getTextDirection(textDirection),
        children: [
          Text(
            title,
            textAlign: _getTextAlign(textDirection),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          _getGap(),
          Text(
            text,
            textAlign: _getTextAlign(textDirection),
            style: Theme.of(context).textTheme.bodyMedium,
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

  MainAxisAlignment _getVerticalAlignment(
      TextVerticalAlignment verticalAlignment) {
    switch (verticalAlignment) {
      case TextVerticalAlignment.top:
        return MainAxisAlignment.start;
      case TextVerticalAlignment.center:
        return MainAxisAlignment.center;
      case TextVerticalAlignment.bottom:
        return MainAxisAlignment.end;
      case TextVerticalAlignment.stretch:
        return MainAxisAlignment.spaceBetween;
    }
  }

  Widget _getGap() {
    if (gap != null) {
      return SizedBox(
        height: gap,
      );
    } else {
      return const SizedBox();
    }
  }
}
