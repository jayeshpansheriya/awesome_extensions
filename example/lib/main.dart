import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:example/avtar_exp.dart';
import 'package:example/padding_ext.dart';
import 'package:example/shimmer_effect.dart';
import 'package:example/text_data.dart';
import 'package:example/widget_ext.dart';
import 'package:flutter/material.dart';

void main() {
  // Here we set the URL strategy for our web app.
  // It is safe to call this function when running on mobile or desktop as well.
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String? title;
  MyHomePage({Key? key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title ?? ''),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /// Shimmer Effect
              ElevatedButton(
                  onPressed: () {
                    context.push(ShimmerEffectExample());
                  },
                  child: Text('Shimmer Effect')),

              20.0.vertBox,

              /// Text Theme Extensions
              ElevatedButton(
                  onPressed: () {
                    context.push(TextExtensionView());
                  },
                  child: Text('Text Theme')),

              ///SizeBox Extensions
              20.0.vertBox,
              20.0.horzBox,

              Row(
                children: [
                  Text(
                    'Hello World',
                  ),
                  20.0.horzBox,
                  Text(
                    'Hello World',
                  )
                ],
              ),

              20.0.vertBox,

              /// Widget Extensions
              ElevatedButton(
                  onPressed: () {
                    context.push(WidgetExt());
                  },
                  child: Text('Widget Ext')),

              20.0.vertBox,

              ///Padding Extensions
              ElevatedButton(
                  onPressed: () {
                    context.push(PaddingExtensionView());
                  },
                  child: Text('Pedding Ext')),

              20.0.vertBox,

              ///Avatar
              ElevatedButton(
                  onPressed: () {
                    context.push(AvatarExample());
                  },
                  child: Text('Avatar')),

              20.0.vertBox,

              ///Date Extensions
              Text('${dateTime.isToday}'),
              Text('${dateTime.isYesterday}'),
              Text('${dateTime.isSameDate(dateTime)}'),

              ///Platform Extension
              if (MyPlatform.isWeb)
                Text(
                  'Hello World Web',
                ).gap(10.0),
            ],
          ),
        ));
  }
}
