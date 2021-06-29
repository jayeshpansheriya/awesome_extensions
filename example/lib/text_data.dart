import 'package:flutter/material.dart';
import 'package:awesome_extensions/awesome_extensions.dart';

class TextExt extends StatelessWidget {
  const TextExt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Theme'),
      ),
      body: Center(
        child: Column(
          children: [
            //Text Extensions
            Text(
              'Hello World',
              style: context.caption!.bold,
            ),
            Text(
              'Hello World',
              style: context.headline3!.semiBold,
            ),
            Text(
              'Hello World',
              style: context.headline3!.regular,
            ),
            Text(
              'Hello World',
              style: context.headline4,
            ),
            Text(
              'Hello World',
              style: context.textTheme.headline4!.thin,
            ),

            /// Text Widget
            Text('Hello World').bold().fontSize(25).italic(),
          ],
        ),
      ),
    );
  }
}
