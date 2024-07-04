import 'package:flutter/material.dart';
import 'package:awesome_extensions/awesome_extensions.dart';

class PaddingExtensionView extends StatelessWidget {
  const PaddingExtensionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding Ext'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Hello World',
          ).gapSymmetric(horiz: 2.0, vert: 5.0),
          Text(
            'Hello World',
          ).gap(10.0),
          CustomScrollView(
            slivers: [
              Text(
                'Hello World',
              ).toSliver().gapSymmetric(vert: 24.0, horiz: 24.0),
            ],
          ).expanded()
        ],
      ),
    );
  }
}
