import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

double width = 50;
double height = 50;

Color color = Colors.indigo;
double borderRadius = 10.0;

class _AnimatedScreenState extends State<AnimatedScreen> {
  void changeShape() {
    final random = Random();

    setState(() {
      width = random.nextInt(300) + 120;
      height = random.nextInt(300) + 120;
      borderRadius = random.nextInt(100) + 20;

      color = Color.fromRGBO(
          random.nextInt(255), //red

          random.nextInt(255), //green

          random.nextInt(255), //blue

          1 //opacity

          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("animated containers"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.elasticOut,
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(borderRadius)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
