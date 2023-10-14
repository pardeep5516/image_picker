import 'package:flutter/material.dart';
import 'package:image_pick/src/app.dart';

main() => runApp(
      const HomePage(),
    );

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
