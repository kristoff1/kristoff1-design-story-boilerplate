import 'package:flutter/material.dart';

class SquareNumberingWidget extends StatelessWidget {
  final int number;
  final Color backgroundColor;
  final double paddingValue;
  final double radiusValue;
  final List<BoxShadow>? shadows;

  const SquareNumberingWidget({
    super.key,
    required this.number,
    this.radiusValue = 0,
    this.paddingValue = 8.0,
    this.backgroundColor = Colors.white,
    this.shadows,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(paddingValue),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(radiusValue),
        ),
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
