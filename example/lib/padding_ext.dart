import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';

class PaddingExt extends StatelessWidget {
  const PaddingExt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding Ext'),
      ),
      body: Column(
        children: [
          const Text(
            'Hello World',
          ).paddingSymmetric(horizontal: 2.0, vertical: 5.0),
          const Text(
            'Hello World',
          ).paddingAll(10.0),
        ],
      ),
    );
  }
}
