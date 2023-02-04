// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final double triangleSize = 10;
  final double progressHeight = 8;
  final double tooltipHeight = 30;
  final GlobalKey key = GlobalKey();
  double tooltipWidth = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        tooltipWidth = key.currentContext!.size!.width;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: LayoutBuilder(builder: (context, size) {
          final maxWidth = size.maxWidth - (triangleSize * 2);
          final double halfWidth = tooltipWidth / 2;
          const double x = 0.5;

          double center = (maxWidth * x) - (halfWidth - triangleSize);
          if (center < 0) {
            center = 0;
          } else if (center + (halfWidth + triangleSize) > maxWidth) {
            center = size.maxWidth - tooltipWidth;
          }

          return Container(
            width: size.maxWidth,
            height: progressHeight + triangleSize + tooltipHeight,
            color: Colors.red.withOpacity(0.1),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: maxWidth,
                    height: progressHeight,
                    margin: EdgeInsets.symmetric(horizontal: triangleSize),
                    color: Colors.blueAccent.withOpacity(0.2),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: maxWidth * x,
                    height: progressHeight,
                    margin: EdgeInsets.symmetric(horizontal: triangleSize),
                    color: Colors.blueAccent,
                  ),
                ),
                Positioned(
                  left: (triangleSize / 2) + (maxWidth * x),
                  top: tooltipHeight,
                  child: _DrawTriAngle(
                    size: triangleSize,
                  ),
                ),
                Positioned(
                  left: center,
                  child: _DrawRect(
                    tooltipHeight: tooltipHeight,
                    key: key,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class _DrawRect extends StatelessWidget {
  const _DrawRect({
    required this.tooltipHeight,
    Key? key,
  }) : super(key: key);

  final double tooltipHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: tooltipHeight,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Text("안녕하세요"),
    );
  }
}

class _DrawTriAngle extends StatelessWidget {
  _DrawTriAngle({
    required this.size,
  });
  double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        size: Size(size, size),
        painter: Triangle(
          color: Colors.green,
        ),
      ),
    );
  }
}

class Triangle extends CustomPainter {
  Triangle({
    required this.color,
  });

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    Paint painter = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(size.width / 2, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
