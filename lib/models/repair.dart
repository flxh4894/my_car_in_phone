import 'package:freezed_annotation/freezed_annotation.dart';

part 'repair.freezed.dart';
part 'repair.g.dart';

@freezed
class RepairModel with _$RepairModel {
  factory RepairModel({
    required String name,
    required DateTime lastTime,
    required String typeEnum,
    required int cycle,
  }) = _RepairModel;

  factory RepairModel.fromJson(Map<String, Object?> json) =>
      _$RepairModelFromJson(json);
}
