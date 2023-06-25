import 'package:flutter/material.dart';
import 'package:design/design.dart';

class TextComponentsShowcase extends StatelessWidget {
  const TextComponentsShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Components Showcase'),
      ),
      body: ListView(
        children: const [
          TitledText(
            title: 'Titled Text',
            text: 'Titled Text. Description or Image Caption',
          ),
          Divider(),
          TitledText(
            title: 'Titled Text',
            text: 'Titled Text. Description or Image Caption',
            textDirection: TitledTextDirection.right,
          ),
          Divider(),
          TitledText(
            title: 'Titled Text',
            text: 'Titled Text. Description or Image Caption',
            textDirection: TitledTextDirection.center,
          ),
          Divider(),
          NumberedText(
            number: '1',
            text: 'Numbered Text. Description or Image Caption',
            textDirection: NumberedTextDirection.left,
          ),
          Divider(),
          NumberedText(
            number: '1',
            text: 'Numbered Text. Description or Image Caption',
            textDirection: NumberedTextDirection.right,
          ),
          Divider(),
          NumberedText(
            number: '1',
            text: 'Numbered Text. Description or Image Caption',
            textDirection: NumberedTextDirection.center,
          ),
          Divider(),
          NumberedAndTitleText(
            number: '1',
            text: 'Numbered and Title Text. Description or Image Caption',
            title: 'Title',
            textDirection: NumberedAndTextDirection.left,
          ),
          Divider(),
          NumberedAndTitleText(
            number: '1',
            text: 'Numbered and Title Text. Description or Image Caption',
            title: 'Title',
            textDirection: NumberedAndTextDirection.right,
          ),
          Divider(),
          NumberedAndTitleText(
            number: '1',
            text: 'Numbered and Title Text. Description or Image Caption',
            title: 'Title',
            textDirection: NumberedAndTextDirection.center,
          ),
          Divider(),
          SideNumberedTitledText(
            number: '1',
            text: 'Numbered and Title Text. Description or Image Caption',
            title: 'Title',
            textDirection: SideNumberedTitledTextDirection.left,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            numberPadding: EdgeInsets.all(8),
            numberDecoration: BoxDecoration(
              color: Colors.orange,
              border: Border.fromBorderSide(
                BorderSide(
                  color: Colors.blue,
                  width: 2,
                ),
              ),
              shape: BoxShape.circle,
            ),
          ),
          Divider(),
          SideNumberedTitledText(
            number: '1',
            text: 'Numbered and Title Text. Description or Image Caption',
            title: 'Title',
            textDirection: SideNumberedTitledTextDirection.right,
          ),
          Divider(),
          SideNumberedTitledText(
            number: '1',
            text: 'Numbered and Title Text. Description or Image Caption',
            title: 'Title',
            textDirection: SideNumberedTitledTextDirection.center,
          ),
          Divider(),
          SideNumberedTitledText(
            number: '1',
            text: 'Numbered and Title Text. Description or Image Caption',
            title: 'Title',
            textDirection: SideNumberedTitledTextDirection.stretch,
          ),
        ],
      ),
    );
  }
}
