import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_car_in_phone/services/car_info_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_car_info.freezed.dart';
part 'my_car_info.g.dart';

@freezed
class MyCarInfo with _$MyCarInfo {
  factory MyCarInfo({required String carNumber, required DateTime lastCheck}) =
      _MyCarInfo;

  factory MyCarInfo.fromJson(Map<String, Object?> json) =>
      _$MyCarInfoFromJson(json);
}

@riverpod
class MyCarInfoState extends _$MyCarInfoState {
  final CarInfoService service = CarInfoService();

  @override
  Future<MyCarInfo> build() async {
    return await service.getCarInfo();
  }
}
