import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HeroPage(),
    );
  }
}

class HeroPage extends StatefulWidget {
  @override
  _HeroPageState createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _spinAnimation;
  late Animation<Offset> _jumpAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _spinAnimation = Tween<double>(begin: 0, end: 2 * 3.14159).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );

    _jumpAnimation =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(0, -0.1)).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Rotating shape 1
          Positioned(
            top: 350,
            left: 30,
            child: AnimatedBuilder(
              animation: _spinAnimation,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _spinAnimation.value,
                  child: child,
                );
              },
              child: Image.asset('assets/img/hero/hero-3-shape6.png'),
            ),
          ),

          // Rotating shape 2
          Positioned(
            top: 280,
            right: 20,
            child: AnimatedBuilder(
              animation: _spinAnimation,
              builder: (context, child) {
                return Transform.rotate(
                  angle: -_spinAnimation.value,
                  child: child,
                );
              },
              child: Image.asset('assets/img/hero/hero-3-shape7.png'),
            ),
          ),

          // Main Hero Section
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Hero Text Section
                HeroSection(),
                SizedBox(height: 10),

                // Jumping Shape Animation
                SlideTransition(
                  position: _jumpAnimation,
                  child: Image.asset('assets/img/hero/hero-3-shape4.png'),
                ),
                SizedBox(height: 5),

                // Static Shape
                Image.asset('assets/img/hero/hero-3-shape3.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Outdated website? Low conversion rates?',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 1.5,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15),
        Text(
          'We’ll breathe new life into your online presence.',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 1.2,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
