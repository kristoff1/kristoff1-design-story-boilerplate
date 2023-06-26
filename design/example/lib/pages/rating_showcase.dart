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
            child: SingleIconRating(
              maximumLimit: Maximum.fiveMax,
              filledColors: Colors.amber,
              unFilledColors: Colors.lightBlue,
              rating: 3.5,
              icon: 'assets/images/placeholder.png',
            ),
            height: MediaQuery.of(context).size.height * 0.25,
          ),

        ],
      ),
    );
  }
}
