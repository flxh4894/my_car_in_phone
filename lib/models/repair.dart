import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_car_in_phone/models/enum/part_type_enum.dart';

part 'repair.freezed.dart';
part 'repair.g.dart';

@freezed
class RepairModel with _$RepairModel {
  factory RepairModel({
    required DateTime lastTime,
    required PartTypeEnum typeEnum,
    required int cycle,
  }) = _RepairModel;

  factory RepairModel.fromJson(Map<String, Object?> json) =>
      _$RepairModelFromJson(json);
}
