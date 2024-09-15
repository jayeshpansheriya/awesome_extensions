import 'package:flutter/material.dart';
import 'package:awesome_extensions/awesome_extensions.dart';

class TextExt extends StatelessWidget {
  const TextExt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Theme'),
      ),
      body: Center(
        child: Column(
          children: [
            //Text Extensions
            Text(
              'Hello World',
              style: context.displayLarge?.bold,
            ),
            Text(
              'Hello World',
              style: context.headlineLarge?.semiBold,
            ),
            Text(
              'Hello World',
              style: context.titleLarge?.regular,
            ),
            Text('Hello World', style: context.bodyLarge),
            Text(
              'Hello World',
              style: context.textTheme.bodySmall?.thin,
            ),

            /// Text Widget
            const Text('Hello World').bold().fontSize(25).italic(),
          ],
        ),
      ),
    );
  }
}
