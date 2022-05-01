import 'dart:async';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

class ShimmerEffectExample extends StatefulWidget {
  const ShimmerEffectExample({Key? key}) : super(key: key);

  @override
  _ShimmerEffectState createState() => _ShimmerEffectState();
}

class _ShimmerEffectState extends State<ShimmerEffectExample> {
  late StreamController<int> _events;
  @override
  initState() {
    super.initState();
    _events = new StreamController<int>();
    addData();
  }

  addData() {
    Future.delayed(Duration(seconds: 10), () {
      _events.add(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shimmer Effect'),
      ),
      body: StreamBuilder<int>(
        stream: _events.stream,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          if (snapshot.data == null) {
            return Container(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.blue,
                    height: 150,
                    width: 50,
                  ).applyShimmer();
                },
              ),
            );
          }

          return Container(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container();
              },
            ),
          );
        },
      ),
    );
  }
}
