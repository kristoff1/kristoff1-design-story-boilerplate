import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgNonLimitedIconRating extends StatelessWidget {
  final int rating;
  final String icon;
  final double iconSize;

  const SvgNonLimitedIconRating({
    super.key,
    required this.rating,
    required this.icon,
    this.iconSize = 32,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _getIcon(1, rating),
            ),
            Expanded(
              child: _getIcon(2, rating),
            ),
            Expanded(
              child: _getIcon(3, rating),
            ),
            Expanded(
              child: _getIcon(4, rating),
            ),
            Expanded(
              child: _getIcon(5, rating),
            ),
          ],
        ),
      ],
    );
  }

  Widget _getIcon(int milestone, int rating) {
    if (milestone <= rating.floor()) {
      return _getFullyFilledIcon();
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _getFullyFilledIcon() {
    return SvgPicture.asset(
      icon,
      width: iconSize,
      height: iconSize,
    );
  }
}
