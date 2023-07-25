import 'package:flutter/material.dart';
import 'package:flutter_animation/component/container.dart';
import 'package:flutter_animation/component/scale.dart';
import 'package:flutter_animation/component/opacity.dart';
import 'package:flutter_animation/component/controller.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Controller(),
    );
  }
}
