import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_car_in_phone/generated/l10n.dart';
import 'package:my_car_in_phone/models/enum/part_type_enum.dart';
import 'package:my_car_in_phone/models/repair.dart';
import 'package:my_car_in_phone/models/test_model.dart';
import 'package:my_car_in_phone/notifiers/car_info_notifier.dart';
import 'package:my_car_in_phone/notifiers/repair_info_notifier.dart';
import 'package:my_car_in_phone/notifiers/states/car_info_state.dart';
import 'package:my_car_in_phone/notifiers/test_notifier.dart';
import 'package:my_car_in_phone/routes/routes.dart';

final np = NotifierProvider<MyTestNotifier, TestModel>(
  () => MyTestNotifier(),
);

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
            TextButton(
              onPressed: () =>
                  Navigator.pushNamed(context, RouteEnum.test.path),
              child: const Text("click"),
            ),

            // 컴포넌트 1
            Container(
              width: double.infinity,
              color: Colors.blue.withOpacity(0.2),
              child: Column(
                children: [
                  Text(carInfo.carNumber),
                  Text("${carInfo.lastRepair} 마지막 정비일"),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      S.of(context).carInfo,
                    ),
                  ),
                ],
              ),
            ),

            // 컴포넌트 2
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              color: Colors.green.withOpacity(0.2),
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(S.of(context).carManage),
                      TextButton(
                        onPressed: () {},
                        child: Text(S.of(context).seeMore),
                      ),
                    ],
                  ),
                  for (RepairModel item in rn.getShowList(4))
                    Container(
                      margin: EdgeInsets.only(
                          bottom: rn.getShowList(4).last == item ? 0 : 8),
                      child: Column(
                        children: [
                          Text(item.typeEnum.text),
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
                          rn.calcRemainingDays(item) <= 0
                              ? Text(S.of(context).needChangeNow)
                              : Text(S
                                  .of(context)
                                  .needChange(rn.calcRemainingDays(item)))
                        ],
                      ),
                    )
                ],
              ),
            ),

            TextButton(
              onPressed: () {
                log("달력페이지");
                Navigator.pushNamed(context, RouteEnum.calendar.path);
              },
              child: Text("달력페이지"),
            ),
            TextButton(
              onPressed: () {
                log("update age?? ???????????");
                ref.read(np.notifier).updateAge();
              },
              child: Text("${ref.watch(np).age}"),
            )
          ],
        ),
      ),
    );
  }
}
