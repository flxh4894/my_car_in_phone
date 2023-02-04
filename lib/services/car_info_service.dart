import 'package:my_car_in_phone/states/my_car_info.dart';

///
/// 차량 정보 관련 서비스
///
class CarInfoService {
  Future<MyCarInfo> getCarInfo() async {
    await Future.delayed(const Duration(seconds: 2));
    return MyCarInfo(carNumber: "123가 3456", lastCheck: DateTime.now());
  }
}
