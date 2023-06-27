import 'package:example/pages/component_images_showcase.dart';
import 'package:example/pages/components_image_interactive_showcase.dart';
import 'package:example/pages/example_1.dart';
import 'package:example/pages/example_2.dart';
import 'package:example/pages/example_3.dart';
import 'package:example/pages/image_and_widgets_showcase.dart';
import 'package:example/pages/letter_sized_component_showcase.dart';
import 'package:example/pages/rating_showcase.dart';
import 'package:example/pages/text_components_showcase.dart';
import 'package:flutter/material.dart';

class Catalog extends StatelessWidget {
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog'),
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              _navigateToPage(
                context,
                const ComponentImageShowcase(),
              );
            },
            child: const Text('Component Images Showcase'),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToPage(context, const ComponentsImageInteractiveShowcase());
            },
            child: const Text('Size Interactive Images Showcase'),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToPage(context, const LetterSizedComponentsShowcase());
            },
            child: const Text('Letter Interactive Images Showcase'),
          ),
          ElevatedButton(
              onPressed: () {
                _navigateToPage(context, const TextComponentsShowcase());
              },
              child: const Text('Text Components Showcase')),
          ElevatedButton(
              onPressed: () {
                _navigateToPage(context, const ImageAndWidgetTextShowcase());
              },
              child: const Text('Image and Widget Showcase')),
          ElevatedButton(
              onPressed: () {
                _navigateToPage(context, const RatingShowcase());
              },
              child: const Text('Rating Showcase')),
          ElevatedButton(
              onPressed: () {
                _navigateToPage(context, const Example1());
              },
              child: const Text('Template 1')),
          ElevatedButton(
              onPressed: () {
                _navigateToPage(context, const Example2());
              },
              child: const Text('Template 2')),
          ElevatedButton(
              onPressed: () {
                _navigateToPage(context, const Example3());
              },
              child: const Text('Template 3')),
        ],
      ),
    );
  }

  void _navigateToPage(BuildContext context, Widget destination) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return destination;
      }),
    );
  }
}
