import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_car_in_phone/models/test_model.dart';
import 'package:my_car_in_phone/notifiers/test_notifier.dart';
import 'package:my_car_in_phone/views/home.dart';

class TestPage extends ConsumerWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TestModel tt = ref.watch(testsProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(tt.userId),
            Text(tt.age.toString()),
            Text(ref.watch(np).age.toString()),
            TextButton(
                onPressed: () => ref.read(testsProvider.notifier).updateAge(),
                child: Text("click"))
          ],
        ),
      ),
    );
  }
}
