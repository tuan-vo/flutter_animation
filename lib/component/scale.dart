import 'package:flutter/material.dart';

class Scale extends StatefulWidget {
  const Scale({super.key});

  @override
  State<Scale> createState() => _ScaleState();
}

class _ScaleState extends State<Scale> {
  double a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: AnimatedScale(
          duration: Duration(seconds: 1),
          scale: a,
          curve: Curves.linear,
          child: GestureDetector(
            onTap: () {
              setState(() {
                a == 1 ? a = 3 : a = 1;
                print(a);
              });
            },
            child: const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 45,
            ),
          ),
        ),
      )),
    );
  }
}
