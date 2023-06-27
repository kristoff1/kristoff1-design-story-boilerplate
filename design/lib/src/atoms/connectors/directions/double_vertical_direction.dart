import 'package:flutter/material.dart';

class DoubleVerticalDirection extends StatelessWidget {
  final double verticalGap;

  const DoubleVerticalDirection({
    super.key,
    this.verticalGap = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: verticalGap,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.arrow_upward, size: 32),
          SizedBox(width: 8),
          Icon(Icons.arrow_downward, size: 32),
        ],
      ),
    );
  }
}
