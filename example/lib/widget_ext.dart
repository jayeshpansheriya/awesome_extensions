import 'dart:developer';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

class WidgetExt extends StatelessWidget {
  const WidgetExt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Ext'),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          )
              .withRoundCorners(backgroundColor: Colors.grey)
              .withShadow()
              .alignAtCenter()
              .toCenter()
              .withTooltip('just a tooltip')
              .paddingOnly(left: 10)
              .paddingAll(20)
              .onTap(() => log('tap'))
              .onLongPress(() => log('long press')),

          /// Text Widget
          const Text('Hello World').bold().fontSize(25).italic(),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget?>[
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ).showIf(true), // or any condition
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ).showIf(false), // or any condition
            ].notNullWidget(), // returns only not null widgets
          ),
        ],
      ),
    );
  }
}
