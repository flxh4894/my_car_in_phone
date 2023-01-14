import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_car_in_phone/models/test_model.dart';

class TestNotifier extends StateNotifier<TestModel> {
  TestNotifier() : super(TestModel(userId: "name", age: 20));

  void updateState(String name, int age, int? sex) {
    state = TestModel(userId: name, age: age, sex: sex ?? state.sex);
  }
}
