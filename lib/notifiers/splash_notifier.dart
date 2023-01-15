import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashNotifier extends StateNotifier<Map<String, dynamic>> {
  SplashNotifier() : super({"status": false}) {
    _init();
  }

  void _init() async {
    await Future.delayed(const Duration(seconds: 2))
        .then((value) => state = {"status": true});
  }
}
