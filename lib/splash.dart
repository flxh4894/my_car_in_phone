import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_car_in_phone/notifiers/splash_notifier.dart';
import 'package:my_car_in_phone/routes/routes.dart';

class SplashPage extends ConsumerWidget {
  SplashPage({super.key});

  final splashProvider =
      StateNotifierProvider<SplashNotifier, Map<String, dynamic>>(
    (ref) => SplashNotifier(),
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<Map>(splashProvider, (previous, next) {
      if (next["status"]) Navigator.pushNamed(context, RouteEnum.home.path);
    });

    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(),
    );
  }
}
