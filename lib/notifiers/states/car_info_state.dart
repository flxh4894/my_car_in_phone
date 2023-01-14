import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_info_state.freezed.dart';
part 'car_info_state.g.dart';

@freezed
class CarInfo with _$CarInfo {
  factory CarInfo({
    required String carNumber,
    required DateTime lastRepair,
  }) = _CarInfo;

  factory CarInfo.fromJson(Map<String, Object?> json) =>
      _$CarInfoFromJson(json);
}
