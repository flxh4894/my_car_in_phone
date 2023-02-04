import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_car_in_phone/models/enum/part_type_enum.dart';
import 'package:my_car_in_phone/routes/routes.dart';
import 'package:my_car_in_phone/states/parts_state.dart';
part 'repair_item_list.freezed.dart';

/// 정비 관련 목록 페이지
class RepairItemListPage extends ConsumerWidget {
  const RepairItemListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _RowWidget(),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteEnum.createRepair.path,
                );
              },
              child: const Text("선택된 리스트"),
            ),
          ],
        ),
      ),
    );
  }
}

class _RowWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Part> list = ref.watch(partsProvider);
    return Column(
      children: [
        for (Part part in list)
          MaterialButton(
            onPressed: () {
              final int idx = list.indexOf(part);
              ref.read(partsProvider.notifier).updateFlag(idx);
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(part.partType.text),
                  Container(
                    height: 10,
                    width: 10,
                    color: part.flag ? Colors.green : Colors.redAccent,
                  )
                ],
              ),
            ),
          )
      ],
    );
  }
}

@freezed
class Parts with _$Parts {
  factory Parts({
    required PartTypeEnum partType,
    required bool flag,
  }) = _Parts;
}
