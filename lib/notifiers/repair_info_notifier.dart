import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_car_in_phone/models/repair.dart';

// 정비 기록 가지고 오기
class RepairInfoNotifier extends StateNotifier<List<RepairModel>> {
  RepairInfoNotifier({
    required this.id,
  }) : super([]) {
    _getRepairInfoList();
  }

  // 테스트시 1이 아이디라고 가정
  final String id;

  // 자동차 정검 리스트 가져오기
  void _getRepairInfoList() async {
    state = [
      RepairModel(
        name: "엔진오일",
        lastTime: DateTime.now().subtract(const Duration(days: 60)),
        typeEnum: "EngineOil",
        cycle: 180,
      ),
      RepairModel(
        name: "타이어",
        lastTime: DateTime.now().subtract(const Duration(days: 175)),
        typeEnum: "Tire",
        cycle: 360,
      ),
      RepairModel(
        name: "미션오일",
        lastTime: DateTime.now().subtract(const Duration(days: 10)),
        typeEnum: "MissionOil",
        cycle: 180,
      ),
      RepairModel(
        name: "브레이크액",
        lastTime: DateTime.now().subtract(const Duration(days: 60)),
        typeEnum: "BreakOil",
        cycle: 180,
      ),
    ];
  }

  // 원하는 갯수만 리스트 리턴
  List<RepairModel> getShowList(int size) {
    return [...state.take(size)];
  }

  // 마지막 점검일로 부터 현재까지 지난 일 수
  int daysBetween(RepairModel model) {
    final from =
        DateTime(model.lastTime.year, model.lastTime.month, model.lastTime.day);
    final now = DateTime.now();
    final to = DateTime(now.year, now.month, now.day);

    final int result = (to.difference(from).inHours / 24).round();
    return result;
  }

  int calcRemainingDays(RepairModel model) {
    return model.cycle - daysBetween(model);
  }
}
