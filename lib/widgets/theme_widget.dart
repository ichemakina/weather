import 'package:flutter/material.dart';

class ThemeWidget extends StatelessWidget {
  final Widget child;
  final MaterialColor color;

  const ThemeWidget({super.key, required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.6, 0.8, 1.0],
          colors: [
            color[200]!,
            color[100]!,
            color[100]!,
          ],
        ),
      ),
      child: child,
    );
  }
}
