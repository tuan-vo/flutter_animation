import 'package:flutter/material.dart';

class Animated_Opacity extends StatefulWidget {
  const Animated_Opacity({super.key});

  @override
  State<Animated_Opacity> createState() => _Animated_OpacityState();
}

double count = 1;

class _Animated_OpacityState extends State<Animated_Opacity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: count,
              curve: Curves.linear,
              duration: Duration(seconds: 1),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count == 1 ? count = 0 : count = 1;
                  });
                },
                child: Text('Click'))
          ],
        ),
      ),
    );
  }
}
