import 'package:flutter/material.dart';

class VerticallyConnectedWidget extends StatelessWidget {
  final Widget topWidget;
  final Widget bottomWidget;
  final Widget connectorWidget;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;

  const VerticallyConnectedWidget({
    super.key,
    required this.topWidget,
    required this.bottomWidget,
    required this.connectorWidget,
    this.decoration,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: decoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          topWidget,
          connectorWidget,
          bottomWidget,
        ],
      ),
    );
  }

}
