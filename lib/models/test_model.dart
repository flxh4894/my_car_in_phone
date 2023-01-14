import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'test_model.freezed.dart';
part 'test_model.g.dart';

@freezed
class TestModel with _$TestModel {
  factory TestModel({required String userId, required int age, int? sex}) =
      _TestModel;

  factory TestModel.nameOnly({
    required String userId,
    @Default(20) int age,
    @Default(1) int sex,
  }) = _TestModelNameOnly;

  factory TestModel.fromJson(Map<String, Object?> json) =>
      _$TestModelFromJson(json);
}
