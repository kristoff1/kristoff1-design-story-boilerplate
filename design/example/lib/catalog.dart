import 'package:example/pages/component_images_showcase.dart';
import 'package:example/pages/components_image_interactive_showcase.dart';
import 'package:example/pages/letter_sized_component_showcase.dart';
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const ComponentImageShowcase();
                  },
                ),
              );
            },
            child: const Text('Component Images Showcase'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const ComponentsImageInteractiveShowcase();
                  },
                ),
              );
            },
            child: const Text('Size Interactive Images Showcase'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const LetterSizedComponentsShowcase();
                  },
                ),
              );
            },
            child: const Text('Letter Interactive Images Showcase'),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const TextComponentsShowcase();
                    },
                  ),
                );
              },
              child: const Text('Text Components Showcase'))
        ],
      ),
    );
  }
}
