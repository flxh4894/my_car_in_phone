import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:my_car_in_phone/states/my_car_info.dart';

///
/// 차량 정보 상세 페이지
///
class CarInfoDetailPage extends ConsumerWidget {
  const CarInfoDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MyCarInfo info = ref.watch(myCarInfoStateProvider).value!;
    return Scaffold(
      appBar: AppBar(
        title: const Text("차량 정보 상세페이지"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: 50,
              color: Colors.amber.withOpacity(0.2),
              alignment: Alignment.center,
              child: Text(info.carNumber),
            ),
            Container(
              height: 50,
              color: Colors.blueAccent.withOpacity(0.2),
              alignment: Alignment.center,
              child: Text(DateFormat("yyyy-MM-dd").format(info.lastCheck)),
            )
          ],
        ),
      ),
    );
  }
}
