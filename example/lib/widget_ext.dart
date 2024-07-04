import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

class WidgetExt extends StatelessWidget {
  const WidgetExt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Ext'),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
          )
              .radius(backgroundColor: Colors.grey)
              .shadow()
              .align()
              .center()
              .tooltip('just a tooltip')
              .gapOnly(left: 10)
              .gap(20)
              .onTap(() => print('tap'))
              .onLongPress(() => print('long press')),

          /// Text Widget
          Text('Hello World').bold().size(25).italic(),

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
