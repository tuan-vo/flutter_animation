import 'package:flutter/material.dart';

class Animated_Container extends StatefulWidget {
  const Animated_Container({super.key});

  @override
  State<Animated_Container> createState() => _Animated_ContainerState();
}

double Width = 200;
double Hight = 200;
List col = [Colors.red, Colors.green, Colors.blue, Colors.amber];
int count = 0;

class _Animated_ContainerState extends State<Animated_Container> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          width: Width,
          height: Hight,
          color: col[count],
          duration: Duration(seconds: 1),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      Width += 30;
                    });
                  },
                  child: Text('Width', style: TextStyle(color: Colors.white)),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      Hight += 30;
                    });
                  },
                  child: Text('Hight', style: TextStyle(color: Colors.white)),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      if (count < col.length - 1) {
                        count += 1;
                      } else {
                        count = 0;
                      }
                    });
                  },
                  child: Text('Color', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
