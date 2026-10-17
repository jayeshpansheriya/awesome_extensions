import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';

class SpacingExample extends StatefulWidget {
  const SpacingExample({super.key});

  @override
  State<SpacingExample> createState() => _SpacingExampleState();
}

class _SpacingExampleState extends State<SpacingExample> {
  bool useSpacious = true;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        extensions: [useSpacious ? SpacingTheme.spacious() : SpacingTheme()],
      ),
      child: Builder(
        builder: (innerContext) {
          return Scaffold(
            appBar: AppBar(title: const Text('Spacing Theme')),
            body: Center(
              child: Column(
                spacing: innerContext.spacingMd,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Use Spacious:'),
                      Switch(
                        value: useSpacious,
                        onChanged: (value) {
                          setState(() {
                            useSpacious = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.blue,
                    child: Text('sm').paddingAll(innerContext.spacingSm),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Text('md').paddingAll(innerContext.spacingMd),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Text('lg').paddingAll(innerContext.spacingLg),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Text('xl').paddingAll(innerContext.spacingXl),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
