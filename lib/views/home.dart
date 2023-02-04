import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_car_in_phone/containers/my_car_info.dart';
import 'package:my_car_in_phone/generated/l10n.dart';
import 'package:my_car_in_phone/models/enum/part_type_enum.dart';
import 'package:my_car_in_phone/models/repair.dart';
import 'package:my_car_in_phone/notifiers/repair_info_notifier.dart';
import 'package:my_car_in_phone/routes/routes.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});

  final repairInfoProvider =
      StateNotifierProvider<RepairInfoNotifier, List<RepairModel>>((ref) {
    return RepairInfoNotifier(id: "1");
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            const MyCarInfoPanel(),
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
              child: const Text("달력페이지"),
            ),

            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteEnum.list.path,
                );
              },
              child: const Text("목록"),
            ),
          ],
        ),
      ),
    );
  }
}
