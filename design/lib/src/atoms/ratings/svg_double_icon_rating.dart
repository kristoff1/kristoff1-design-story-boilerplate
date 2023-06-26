import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum SvgDoubleIconRatingMaximum {
  fiveMax,
  tenMax,
}

class SvgDoubleIconRating extends StatelessWidget {

  final int rating;
  final SvgDoubleIconRatingMaximum maximumLimit;
  final String filledIcon;
  final String unfilledIcon;

  const SvgDoubleIconRating({
    super.key,
    required this.rating,
    required this.maximumLimit,
    required this.filledIcon,
    required this.unfilledIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _getIcon(1, rating),),
            Expanded(child: _getIcon(2, rating),),
            Expanded(child: _getIcon(3, rating),),
            Expanded(child: _getIcon(4, rating),),
            Expanded(child: _getIcon(5, rating),),
          ],
        ),
        _getBottomView(maximumLimit),
      ],
    );
  }

  Widget _getBottomView(SvgDoubleIconRatingMaximum maximumLimit) {
    if (maximumLimit == SvgDoubleIconRatingMaximum.fiveMax) {
      return const SizedBox.shrink();
    }
    return Row(
      children: [
        Expanded(child: _getIcon(6, rating),),
        Expanded(child: _getIcon(7, rating),),
        Expanded(child: _getIcon(8, rating),),
        Expanded(child: _getIcon(9, rating),),
        Expanded(child: _getIcon(10, rating),),
      ],
    );
  }

  Widget _getIcon(int milestone, int rating) {
    if (milestone <= rating.floor()) {
      return _getFullyFilledIcon();
    }  else {
      return _getEmptyIcon();
    }
  }

  Widget _getFullyFilledIcon() {
    return SvgPicture.asset(filledIcon);
  }

  Widget _getEmptyIcon() {
    return SvgPicture.asset(unfilledIcon);
  }

}