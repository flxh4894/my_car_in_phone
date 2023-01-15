import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_car_in_phone/models/test_model.dart';
import 'package:my_car_in_phone/notifiers/test_notifier.dart';
import 'package:my_car_in_phone/routes/routes.dart';

class TestPage extends ConsumerWidget {
  TestPage({super.key});

  final user = StateNotifierProvider<TestNotifier, TestModel>((ref) {
    return TestNotifier();
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Text(ref.watch(user).userId),
            Text(ref.watch(user).age.toString()),
            TextButton(
                onPressed: () =>
                    ref.read(user.notifier).updateState("테스터", 10, null),
                child: const Text("update")),
            TextButton(
                onPressed: () => Navigator.pushNamed(
                    context, RouteEnum.home.path,
                    arguments: "Hello?"),
                child: const Text("home"))
          ],
        ),
      ),
    );
  }
}
