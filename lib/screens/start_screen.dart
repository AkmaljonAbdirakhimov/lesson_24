import 'dart:math';

import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;

  double counter = 0;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );

    animationController.addListener(() {
      setState(() {
        counter = animationController.value;
      });
    });
  }

  void start() {
    animationController.forward();
  }

  // void increment() {
  //   if (counter == 7) {
  //     counter = 0;
  //   } else {
  //     counter++;
  //   }
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Container(
              height: 450,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.orange.shade100,
                    Colors.orange.shade300,
                  ],
                ),
                image: const DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage(
                    "assets/images/person.png",
                  ),
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(150),
                  bottomRight: Radius.circular(150),
                ),
              ),
            ),
          ),
          const SizedBox(height: 100),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 95,
                height: 95,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orange.shade200,
                    width: 4,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              CustomPaint(
                size: const Size(95, 95),
                painter: Roller(counter),
              ),
              InkWell(
                onTap: start,
                child: Container(
                  width: 70,
                  height: 70,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.orange.shade600,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    "START",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Roller extends CustomPainter {
  final double counter;

  Roller(this.counter);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.strokeWidth = 4;
    paint.color = Colors.orange.shade600;
    paint.style = PaintingStyle.stroke;

    final Offset center = Offset(size.width / 2, size.height / 2);
    final path = Path();
    path.addArc(
      Rect.fromCircle(center: center, radius: size.width / 2),
      0,
      counter * 7,
    );
    // path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
