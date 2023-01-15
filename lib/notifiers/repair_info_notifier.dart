import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_car_in_phone/models/enum/part_type_enum.dart';
import 'package:my_car_in_phone/models/repair.dart';

// 정비 기록 가지고 오기
class RepairInfoNotifier extends StateNotifier<List<RepairModel>> {
  RepairInfoNotifier({
    required this.id,
  }) : super([]) {
    _init();
  }

  // 테스트시 1이 아이디라고 가정
  // 서버 연결시 특정 차의(여러대일 수 있으니) 정검 리스트 가져오도록
  final String id;

  // 자동차 정검 리스트 가져오기
  void _init() async {
    state = [
      RepairModel(
        lastTime: DateTime.now().subtract(const Duration(days: 60)),
        typeEnum: PartTypeEnum.EngineOil,
        cycle: 180,
      ),
      RepairModel(
        lastTime: DateTime.now().subtract(const Duration(days: 175)),
        typeEnum: PartTypeEnum.Tire,
        cycle: 360,
      ),
      RepairModel(
        lastTime: DateTime.now().subtract(const Duration(days: 10)),
        typeEnum: PartTypeEnum.MissionOil,
        cycle: 180,
      ),
      RepairModel(
        lastTime: DateTime.now().subtract(const Duration(days: 60)),
        typeEnum: PartTypeEnum.BreakOil,
        cycle: 180,
      ),
    ];
  }

  /// 원하는 갯수만 리스트 리턴
  /// PARAMS
  /// size: 리턴 사이즈
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

  // 교체까지 남은 일 수
  int calcRemainingDays(RepairModel model) {
    return model.cycle - daysBetween(model);
  }
}
