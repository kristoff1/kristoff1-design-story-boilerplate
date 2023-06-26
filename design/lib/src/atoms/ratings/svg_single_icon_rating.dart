import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum SvgSingleIconRatingMaximum {
  fiveMax,
  tenMax,
}

class SvgSingleIconRating extends StatelessWidget {
  final double rating;
  final Color? filledColors;
  final Color unFilledColors;
  final SvgSingleIconRatingMaximum maximumLimit;
  final String icon;

  const SvgSingleIconRating({
    super.key,
    required this.rating,
    required this.unFilledColors,
    required this.maximumLimit,
    this.filledColors,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
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
        _getBottomView(maximumLimit),
      ],
    );
  }

  Widget _getBottomView(SvgSingleIconRatingMaximum maximumLimit) {
    if (maximumLimit == SvgSingleIconRatingMaximum.fiveMax) {
      return const SizedBox.shrink();
    }
    return Row(
      children: [
        Expanded(
          child: _getIcon(6, rating),
        ),
        Expanded(
          child: _getIcon(7, rating),
        ),
        Expanded(
          child: _getIcon(8, rating),
        ),
        Expanded(
          child: _getIcon(9, rating),
        ),
        Expanded(
          child: _getIcon(10, rating),
        ),
      ],
    );
  }

  Widget _getIcon(int milestone, double rating) {
    if (milestone > rating && milestone - 1 < rating.ceil()) {
      return _getHalfFilledIcon();
    } else if (milestone <= rating.floor()) {
      return _getFullyFilledIcon();
    } else {
      return _getEmptyIcon();
    }
  }

  Widget _getFullyFilledIcon() {
    return SvgPicture.asset(
      icon,
      fit: BoxFit.contain,
      colorFilter: _getColorFilter(
        filledColors,
      ),
    );
  }

  Widget _getHalfFilledIcon() {
    return Row(
      children: [
        Expanded(
            child: AspectRatio(
          aspectRatio: 0.5,
          child: SvgPicture.asset(
            icon,
            fit: BoxFit.cover,
            alignment: Alignment.centerLeft,
            colorFilter: _getColorFilter(
              filledColors,
            ),
          ),
        )),
        Expanded(
            child: AspectRatio(
          aspectRatio: 0.5,
          child: SvgPicture.asset(
            icon,
            fit: BoxFit.cover,
            alignment: Alignment.centerLeft,
            colorFilter: _getColorFilter(
              unFilledColors,
            ),
          ),
        )),
      ],
    );
  }

  Widget _getEmptyIcon() {
    return SvgPicture.asset(
      icon,
      fit: BoxFit.contain,
      colorFilter: _getColorFilter(
        unFilledColors,
      ),
    );
  }

  ColorFilter? _getColorFilter(Color? color) {
    if (color == null) {
      return null;
    }
    return ColorFilter.mode(color, BlendMode.srcIn);
  }
}
