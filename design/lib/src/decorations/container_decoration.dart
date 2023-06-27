import 'package:design/src/decorations/shadows.dart';
import 'package:flutter/material.dart';

class ContainerDecoration {
  static const BoxDecoration whiteCardDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(4)),
    boxShadow: Shadows.cardShadow,
  );
}
