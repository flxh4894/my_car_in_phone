import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_car_in_phone/notifiers/states/car_info_state.dart';

class CarInfoNotifier extends StateNotifier<CarInfo> {
  CarInfoNotifier()
      : super(
          CarInfo(
            carNumber: "",
            lastRepair: DateTime.now(),
          ),
        ) {
    _init();
  }

  void _init() async {
    await Future.delayed(const Duration(seconds: 2)).then(
      (value) => state = CarInfo(
        carNumber: "12너3456",
        lastRepair: DateTime.now().add(
          const Duration(days: 1),
        ),
      ),
    );
  }
}
