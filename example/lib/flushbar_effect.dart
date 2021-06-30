import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

class FlueshBarEffect extends StatelessWidget {
  const FlueshBarEffect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlushBar Effect'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  FlushbarHelper.createSuccess(
                      message: 'Action Success',
                      title: 'Success',
                      duration: const Duration(seconds: 3))
                    ..show(context);
                },
                child: Text('Success')),
            ElevatedButton(
                onPressed: () {
                  FlushbarHelper.createError(
                          message: 'Action Info', title: 'Info')
                      .show(context);
                },
                child: Text('Info')),
            ElevatedButton(
                onPressed: () {
                  FlushbarHelper.createError(
                          message: 'Action Error', title: 'Error')
                      .show(context);
                },
                child: Text('Error')),
          ],
        ),
      ),
    );
  }
}
