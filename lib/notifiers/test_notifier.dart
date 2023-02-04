import 'dart:developer';
import 'package:my_car_in_phone/models/test_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'test_notifier.g.dart';

@riverpod
class Tests extends _$Tests {
  @override
  TestModel build({required String title}) {
    log("re build test");
    return TestModel(userId: "이도원", age: 32);
  }

  void updateAge() {
    state = state.copyWith(age: 20);
  }
}

class MyTestNotifier extends Notifier<TestModel> {
  @override
  TestModel build() {
    return TestModel(userId: "test", age: 10);
  }

  void updateAge() {
    state = state.copyWith(age: 999);
  }
}
