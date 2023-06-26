import 'package:flutter/material.dart';

enum Maximum {
  fiveMax,
  tenMax,
}

class SingleIconRating extends StatelessWidget {
  final double rating;
  final Color filledColors;
  final Color unFilledColors;
  final Maximum maximumLimit;
  final String icon;

  const SingleIconRating({
    super.key,
    required this.rating,
    required this.filledColors,
    required this.unFilledColors,
    required this.maximumLimit,
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

  Widget _getBottomView(Maximum maximumLimit) {
    if (maximumLimit == Maximum.fiveMax) {
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

  Widget _getIcon(int milestone, double rating) {
    if (milestone > rating && milestone - 1 < rating.ceil()) {
      return _getHalfFilledIcon();
    } else if (milestone <= rating.floor()) {
      return _getFullyFilledIcon();
    }  else {
      return _getEmptyIcon();
    }
  }

  Widget _getFullyFilledIcon() {
    return Image.asset(icon, color: filledColors,);
  }

  Widget _getHalfFilledIcon() {
    return Row(
      children: [
        Expanded(child: AspectRatio(
          aspectRatio: 0.5,
          child: Image.asset(icon, fit: BoxFit.cover, alignment: Alignment.centerLeft , color: filledColors,),
        )),
        Expanded(child: AspectRatio(
          aspectRatio: 0.5,
          child: Image.asset(icon, fit: BoxFit.cover, alignment: Alignment.centerRight , color: unFilledColors,),
        )),
      ],
    );
  }

  Widget _getEmptyIcon() {
    return Image.asset(icon, color: unFilledColors,);
  }
}
