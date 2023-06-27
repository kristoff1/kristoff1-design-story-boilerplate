import 'package:flutter/material.dart';

enum HorizontalDirection {
  left,
  right,
}

class SingleHorizontalDirection extends StatelessWidget {
  final HorizontalDirection direction;
  final double gap;

  const SingleHorizontalDirection({
    super.key,
    required this.direction,
    this.gap = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: gap),
      child: _getIcon(direction),
    );
  }

  Widget _getIcon(HorizontalDirection direction) {
    if (direction == HorizontalDirection.left) {
      return const Icon(
        Icons.arrow_back,
        size: 32,
      );
    } else {
      return const Icon(
        Icons.arrow_forward,
        size: 32,
      );
    }
  }
}
