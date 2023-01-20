import 'dart:developer';
import 'package:my_car_in_phone/models/test_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'test_notifier.g.dart';

@riverpod
class Tests extends _$Tests {
  @override
  TestModel build() {
    log("re build test");
    return TestModel(userId: "이도원", age: 32);
  }

  void updateAge() {
    state = state.copyWith(age: 20);
  }
}

// @riverpod
// TestModel testNotifier(TestNotifierRef ref) {
//   ref.onDispose(() => log("close test notifier"));

//   void updateAge() {}

//   return TestModel(userId: "Lee Do Won", age: 32);
// }

class MyTestNotifier extends Notifier<TestModel> {
  @override
  TestModel build() {
    print("test");
    return TestModel(userId: "haha", age: 10);
  }

  void updateAge() {
    state = state.copyWith(age: 999);
  }
}
