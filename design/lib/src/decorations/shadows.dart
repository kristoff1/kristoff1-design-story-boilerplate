import 'package:flutter/material.dart';

class Shadows {
  static const List<BoxShadow> cardShadow = [
    BoxShadow(
      offset: Offset(1, 1),
      spreadRadius: 1,
      blurRadius: 1,
      color: Colors.black26,
    ),
  ];

  static const List<BoxShadow> listCardShadow = [
    BoxShadow(
      offset: Offset(2, 2),
      color: Colors.black38,
      spreadRadius: 1,
      blurRadius: 2,
    ),
  ];

  static const List<BoxShadow> roundButtonShadow = [
    BoxShadow(
      offset: Offset(1, 1),
      spreadRadius: 2,
      blurRadius: 2,
      color: Colors.black26,
    ),
  ];
}