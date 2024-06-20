import 'package:flutter/material.dart';
import 'package:awesome_extensions/awesome_extensions.dart';

class PaddingExt extends StatelessWidget {
  const PaddingExt({Key? key}) : super(key: key);

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
          ).paddingSymmetric(horiz: 2.0, vert: 5.0),
          Text(
            'Hello World',
          ).paddingAll(10.0),
          CustomScrollView(
            slivers: [
              Text(
                'Hello World',
              ).toSliver().paddingSymmetric(vert: 24.0, horiz: 24.0),
            ],
          ).expanded()
        ],
      ),
    );
  }
}
