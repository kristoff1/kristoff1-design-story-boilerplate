import 'package:flutter/material.dart';

enum OverdrawPosition {
  left,
  right,
}

class OverdrawComponents extends StatelessWidget {
  final Widget overdrawWidget;
  final Widget companionWidget;
  final BoxDecoration containerDecoration;
  final double extraVerticalGap;
  final double horizontalPadding;
  final int overdrawDominantPercentage;
  final OverdrawPosition overdrawPosition;
  final double gap;
  final EdgeInsetsGeometry? margin;

  const OverdrawComponents({
    super.key,
    required this.overdrawWidget,
    required this.companionWidget,
    required this.containerDecoration,
    this.overdrawPosition = OverdrawPosition.left,
    this.overdrawDominantPercentage = 50,
    this.extraVerticalGap = 12,
    this.horizontalPadding = 8,
    this.gap = 0,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: extraVerticalGap,
          ),
          decoration: containerDecoration,
          child: Row(
            children: [
              _getHorizontalPadding(horizontalPadding),
              _getLeftWidget(overdrawPosition),
              _getGap(gap),
              _getRightWidget(overdrawPosition),
              _getHorizontalPadding(horizontalPadding),
            ],
          ),
        ),
        _getOverdrawPosition(overdrawPosition),
      ],
    );
  }

  Expanded _getLeftWidget(OverdrawPosition overdrawPosition) {
    if (overdrawPosition == OverdrawPosition.left) {
      return Expanded(
        flex: _getOverDrawDominantPercentage(overdrawDominantPercentage),
        child: const SizedBox.shrink(),
      );
    }
    return Expanded(
      flex: 100 - _getOverDrawDominantPercentage(overdrawDominantPercentage),
      child: Container(
        child: companionWidget,
      ),
    );
  }

  Expanded _getRightWidget(OverdrawPosition overdrawPosition) {
    if (overdrawPosition == OverdrawPosition.right) {
      return Expanded(
        flex: _getOverDrawDominantPercentage(overdrawDominantPercentage),
        child: const SizedBox.shrink(),
      );
    }
    return Expanded(
      flex: 100 - _getOverDrawDominantPercentage(overdrawDominantPercentage),
      child: Container(
        child: companionWidget,
      ),
    );
  }

  Align _getOverdrawPosition(OverdrawPosition overdrawPosition) {
    switch (overdrawPosition) {
      case OverdrawPosition.left:
        return Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(
              left: horizontalPadding,
            ),
            child: overdrawWidget,
          ),
        );
      case OverdrawPosition.right:
        return Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(
              right: horizontalPadding,
            ),
            child: overdrawWidget,
          ),
        );
    }
  }

  Widget _getGap(double gap) {
    if (gap > 0) {
      return SizedBox(
        width: gap,
      );
    }
    return const SizedBox.shrink();
  }

  int _getOverDrawDominantPercentage(int overdrawDominantPercentage) {
    if (overdrawDominantPercentage > 90) {
      return 90;
    } else if (overdrawDominantPercentage < 10) {
      return 10;
    }
    return overdrawDominantPercentage;
  }

  SizedBox _getHorizontalPadding(double horizontalPadding) {
    if (horizontalPadding < 1) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      width: horizontalPadding,
    );
  }
}
