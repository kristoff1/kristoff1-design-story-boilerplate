import 'package:flutter/material.dart';

class BiWidgets extends StatelessWidget {
  final Widget leftWidget;
  final Widget rightWidget;
  final int leftWidgetPercentage;
  final double? gap;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;

  const BiWidgets({
    super.key,
    required this.leftWidget,
    required this.rightWidget,
    this.leftWidgetPercentage = 50,
    this.gap,
    this.decoration,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: decoration,
      child: Row(
        children: [
          Expanded(
            flex: _getLeftWidgetPercentage(),
            child: leftWidget,
          ),
          _getGap(),
          Expanded(
            flex: 100 - _getLeftWidgetPercentage(),
            child: rightWidget,
          ),
        ],
      ),
    );
  }

  int _getLeftWidgetPercentage() {
    if (leftWidgetPercentage > 90) {
      return 90;
    } else if (leftWidgetPercentage < 10) {
      return 10;
    }
    return leftWidgetPercentage;
  }

  Widget _getGap() {
    if (gap != null) {
      return SizedBox(width: gap,);
    } else {
      return const SizedBox.shrink();
    }
  }

}
