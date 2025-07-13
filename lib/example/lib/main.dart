import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tananga_ui/tananga_ui.dart';

void main() {
  runApp(const MyUIPackageExample());
}

class MyUIPackageExample extends StatelessWidget {
  const MyUIPackageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My UI Package Example',
      // theme: lightTheme,
      home: const ExampleHomePage(),
    );
  }
}

class ExampleHomePage extends StatelessWidget {
  const ExampleHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Package Demo')),
      body: Center(
        child: TanangaUI.buttons.testButton(
          text: "test",
          onPressed: () {
            if (kDebugMode) {
              print("Tananga TEST");
            }
          },
        ),
      ),
    );
  }
}
