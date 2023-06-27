import 'package:flutter/material.dart';

class DoubleHorizontalDirection extends StatelessWidget {
  final double horizontalGap;

  const DoubleHorizontalDirection({
    super.key,
    this.horizontalGap = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalGap),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_back,
            size: 32,
          ),
          SizedBox(height: 8),
          Icon(
            Icons.arrow_forward,
            size: 32,
          ),
        ],
      ),
    );
  }
}
