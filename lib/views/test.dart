import 'package:flutter/material.dart';
import 'dart:math' as math;

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final double triangleSize = 12;
  final double progressHeight = 10;
  final double tooltipHeight = 40;
  final EdgeInsets margin = const EdgeInsets.symmetric(horizontal: 12);
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
        width: double.infinity,
        height: 500,
        color: Colors.green.withOpacity(0.1),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: LayoutBuilder(builder: (context, size) {
          final maxWidth = size.maxWidth - triangleSize * 2;
          final double halfWidth = tooltipWidth / 2;
          const double x = 0.2;

          double center = (maxWidth * x) - (halfWidth - triangleSize);
          if (center < 0) {
            center = 0;
          } else if (center + (halfWidth + triangleSize) > maxWidth) {
            center = size.maxWidth - tooltipWidth;
          }

          return Container(
            width: size.maxWidth,
            height: progressHeight + triangleSize + tooltipHeight,
            color: Colors.red.withOpacity(0.5),
            child: Stack(
              children: [
                Container(
                  width: maxWidth,
                  height: progressHeight,
                  margin: margin,
                  color: Colors.amber,
                ),
                Container(
                  width: maxWidth * x,
                  height: progressHeight,
                  margin: margin,
                  color: Colors.red,
                ),
                Positioned(
                  left: (triangleSize / 2) + (maxWidth * x),
                  top: progressHeight,
                  child: _DrawTriAngle(
                    size: triangleSize,
                  ),
                ),
                Positioned(
                  left: center,
                  top: progressHeight + triangleSize,
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
      width: 100,
      height: tooltipHeight,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
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
      child: Transform.rotate(
        // angle: 45 * math.pi / 180,
        angle: 0,
        child: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}
