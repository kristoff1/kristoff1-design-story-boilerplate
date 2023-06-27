import 'package:flutter/material.dart';

class HorizontallyConnectedWidget extends StatelessWidget {
  final Widget leftWidget;
  final Widget rightWidget;
  final Widget connectorWidget;
  final int leftWidgetPercentage;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;

  const HorizontallyConnectedWidget({
    super.key,
    required this.leftWidget,
    required this.rightWidget,
    required this.connectorWidget,
    this.leftWidgetPercentage = 50,
    this.decoration,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: decoration,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: _getLeftWidgetPercentage(),
            child: leftWidget,
          ),
          connectorWidget,
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

}
