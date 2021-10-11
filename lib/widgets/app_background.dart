import 'dart:ui';

import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({Key? key, required this.child}) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
          child: Image.asset(
            'assets/bg.jpg',
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        child
      ],
    );
  }
}
