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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String? title;
  const MyHomePage({super.key, this.title});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
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
                    context.push(const ShimmerEffectExample());
                  },
                  child: const Text('Shimmer Effect')),

              20.0.heightBox,

              /// Text Theme Extensions
              ElevatedButton(
                  onPressed: () {
                    context.push(const TextExt());
                  },
                  child: const Text('Text Theme')),

              ///SizeBox Extensions
              20.0.heightBox,
              20.0.widthBox,

              Row(
                children: [
                  const Text(
                    'Hello World',
                  ),
                  20.0.widthBox,
                  const Text(
                    'Hello World',
                  )
                ],
              ),

              20.0.heightBox,

              /// Widget Extensions
              ElevatedButton(
                  onPressed: () {
                    context.push(const WidgetExt());
                  },
                  child: const Text('Widget Ext')),

              20.0.heightBox,

              ///Padding Extensions
              ElevatedButton(
                  onPressed: () {
                    context.push(const PaddingExt());
                  },
                  child: const Text('Padding Ext')),

              20.0.heightBox,

              ///Avatar
              ElevatedButton(
                  onPressed: () {
                    context.push(const AvatarExample());
                  },
                  child: const Text('Avatar')),

              20.0.heightBox,

              ///Date Extensions
              Text('${dateTime.isToday}'),
              Text('${dateTime.isToday}'),
              Text('${dateTime.isSameDate(dateTime)}'),

              ///Platform Extension
              if (MyPlatform.isWeb)
                const Text(
                  'Hello World',
                ).paddingAll(10.0),

              ///Show Platform dialog
              ElevatedButton(
                  onPressed: () {
                    context.showAdaptiveAlertDialog(
                      title: 'title',
                      message: 'message',
                      cancelButtonText: 'ok',
                      cancelButtonTextColor: Colors.red,
                    );
                  },
                  child: const Text('Show Dialog')),
            ],
          ),
        ));
  }
}
