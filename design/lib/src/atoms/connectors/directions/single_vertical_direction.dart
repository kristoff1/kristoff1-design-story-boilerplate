import 'package:flutter/material.dart';

enum ConnectorVerticalDirection {
  up,
  down,
}

class SingleVerticalDirection extends StatelessWidget {
  final ConnectorVerticalDirection direction;
  final double gap;

  const SingleVerticalDirection({
    super.key,
    required this.direction,
    this.gap = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: _getIcon(direction),
    );
  }

  Widget _getIcon(ConnectorVerticalDirection direction) {
    if (direction == ConnectorVerticalDirection.up) {
      return const Icon(
        Icons.arrow_upward,
        size: 32,
      );
    } else {
      return const Icon(
        Icons.arrow_downward,
        size: 32,
      );
    }
  }
}
