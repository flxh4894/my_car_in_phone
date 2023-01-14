import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_car_in_phone/models/repair.dart';
import 'package:my_car_in_phone/notifiers/car_info_notifier.dart';
import 'package:my_car_in_phone/notifiers/repair_info_notifier.dart';
import 'package:my_car_in_phone/notifiers/states/car_info_state.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});

  final carInfoProvider =
      StateNotifierProvider<CarInfoNotifier, CarInfo>((ref) {
    return CarInfoNotifier();
  });

  final repairInfoProvider =
      StateNotifierProvider<RepairInfoNotifier, List<RepairModel>>((ref) {
    return RepairInfoNotifier(id: "1");
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CarInfo carInfo = ref.watch(carInfoProvider);
    final RepairInfoNotifier rn = ref.read(repairInfoProvider.notifier);

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16,
        ),
        child: Column(
          children: [
            Text(carInfo.carNumber),
            Text("${carInfo.lastRepair} 마지막 정비일"),
            TextButton(onPressed: () {}, child: const Text('내차정보')),
            Row(
              children: [
                const Text("차량 관리"),
                TextButton(onPressed: () {}, child: const Text('더보기')),
              ],
            ),
            for (RepairModel item in rn.getShowList(4))
              Container(
                width: double.infinity,
                color: Colors.amber.withOpacity(0.2),
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: Column(
                  children: [
                    Text(item.name),
                    LayoutBuilder(builder: (context, size) {
                      return Stack(
                        children: [
                          Container(
                            height: 10,
                            width: size.maxWidth,
                            color: Colors.red.withOpacity(0.2),
                          ),
                          Container(
                            height: 10,
                            width: size.maxWidth *
                                (rn.daysBetween(item) / item.cycle),
                            color: Colors.red.withOpacity(1),
                          ),
                        ],
                      );
                    }),
                    Text("${rn.calcRemainingDays(item)}뒤에 교체 필요"),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
