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
        children: [
          Text(
            'Hello World',
          ).paddingSymmetric(horizontal: 2.0, vertical: 5.0),
          Text(
            'Hello World',
          ).paddingAll(10.0),
        ],
      ),
    );
  }
}
