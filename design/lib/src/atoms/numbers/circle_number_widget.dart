import 'package:flutter/material.dart';

class CircleNumberingWidget extends StatelessWidget {
  final int number;
  final Color backgroundColor;
  final double paddingValue;
  final List<BoxShadow>? shadows;

  const CircleNumberingWidget({
    super.key,
    required this.number,
    this.paddingValue = 8.0,
    this.backgroundColor = Colors.white,
    this.shadows,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(paddingValue),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        boxShadow: shadows,
      ),
      child: Text(
        number.toString(),
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
