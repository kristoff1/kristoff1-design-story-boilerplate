import 'package:design/design.dart';
import 'package:flutter/material.dart';

class RatingShowcase extends StatelessWidget {
  const RatingShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: const SingleIconRating(
              maximumLimit: SingleIconRatingMaximum.fiveMax,
              unFilledColors: Colors.lightBlue,
              rating: 3.5,
              icon: 'assets/images/placeholder.png',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: const SingleIconRating(
              maximumLimit: SingleIconRatingMaximum.fiveMax,
              unFilledColors: Colors.lightBlue,
              rating: 3.5,
              icon: 'assets/icons/star.png',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: const SingleIconRating(
              maximumLimit: SingleIconRatingMaximum.tenMax,
              unFilledColors: Colors.lightBlue,
              rating: 7,
              icon: 'assets/images/placeholder.png',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: const DoubleIconRating(
              maximumLimit: DoubleIconRatingMaximum.fiveMax,
              rating: 3,
              filledIcon: 'assets/icons/star.png',
              unfilledIcon: 'assets/icons/dollar-symbol.png',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: const NonLimitedIconRating(
              icon: 'assets/images/placeholder.png',
              rating: 3,
            ),
          ),
        ],
      ),
    );
  }
}
