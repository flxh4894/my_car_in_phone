import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:my_car_in_phone/generated/l10n.dart';
import 'package:my_car_in_phone/routes/routes.dart';
import 'package:my_car_in_phone/states/my_car_info.dart';

///
/// 내 차 정보 패널
///
class MyCarInfoPanel extends ConsumerWidget {
  const MyCarInfoPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (ref.watch(myCarInfoStateProvider).isLoading) {
      return Container(
        width: double.infinity,
        color: Colors.blue.withOpacity(0.2),
        child: const Text("Loading..."),
      );
    } else {
      MyCarInfo info = ref.watch(myCarInfoStateProvider).value!;
      return Container(
        width: double.infinity,
        color: Colors.blue.withOpacity(0.2),
        child: Column(
          children: [
            Text(info.carNumber),
            Text(DateFormat("yyyy-MM-dd").format(info.lastCheck)),
            TextButton(
              onPressed: () => Navigator.pushNamed(
                context,
                RouteEnum.carInfoDetail.path,
              ),
              child: Text(
                S.of(context).carInfo,
              ),
            ),
          ],
        ),
      );
    }
  }
}
