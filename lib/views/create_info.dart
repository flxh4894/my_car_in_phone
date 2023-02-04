import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_car_in_phone/models/enum/part_type_enum.dart';
import 'package:my_car_in_phone/states/parts_state.dart';
import 'package:my_car_in_phone/utils/logger.dart';

/// 정비 관련 정보 페이지
class CreateInfoPage extends ConsumerWidget {
  const CreateInfoPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: SizedBox(
              height: 30,
              child: TextButton(
                onPressed: () {
                  logWarning(ref.read(repairTypeProvider));
                  logError(
                    ref.watch(distanceProvider).text.isEmpty
                        ? 0
                        : ref.watch(distanceProvider).text,
                  );
                  ref.read(selectedPartsProvider).forEach((element) {
                    logInfo("${element.partType} ${element.price.text}");
                  });
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.white,
                ),
                child: const Text("저장"),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const _TypeRow(),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: const Text("주행누적거리"),
                  ),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        isDense: true,
                        suffixIcon: Container(
                          alignment: Alignment.center,
                          height: 12,
                          width: 12,
                          child: const Text("km"),
                        ),
                      ),
                      controller: ref.watch(distanceProvider),
                    ),
                  )
                ],
              ),
              const _EachRowArea(),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("+"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 정비 관련 Row
class _EachRowArea extends ConsumerWidget {
  const _EachRowArea();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Part> list = ref.watch(selectedPartsProvider);
    return SingleChildScrollView(
      child: Column(
        children: [
          for (Part i in list)
            ItemWidget(
              index: list.indexOf(i),
              memo: i.memo,
              money: i.price,
              type: i.partType.text,
            ),
        ],
      ),
    );
  }
}

class ItemWidget extends ConsumerWidget {
  const ItemWidget({
    required this.index,
    required this.memo,
    required this.money,
    required this.type,
    super.key,
  });

  final int index;
  final String type;
  final TextEditingController memo;
  final TextEditingController money;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: Text("${index + 1}"),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 8),
                      child: const Icon(Icons.ac_unit),
                    ),
                    Text(type),
                  ],
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: money,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 8,
                    ),
                    hintText: "지출금액",
                    suffixIcon: Container(
                      width: 12,
                      height: 12,
                      alignment: Alignment.center,
                      child: const Text(
                        "원",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  maxLength: 250,
                  keyboardType: TextInputType.text,
                  controller: memo,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 8,
                    ),
                    hintText: "기타 입력 사항 입력",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _TypeRow extends ConsumerWidget {
  const _TypeRow();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final RepairTypeEnum type = ref.watch(repairTypeProvider);
    return Row(
      children: [
        const Text("정비타입"),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: type == RepairTypeEnum.shop ? Colors.pink : null,
          ),
          onPressed: () =>
              ref.read(repairTypeProvider.notifier).state = RepairTypeEnum.shop,
          child: const Text("서비스센터"),
        ),
        TextButton(
          onPressed: () =>
              ref.read(repairTypeProvider.notifier).state = RepairTypeEnum.self,
          style: TextButton.styleFrom(
            foregroundColor: type == RepairTypeEnum.self ? Colors.pink : null,
          ),
          child: const Text("자가정비"),
        ),
      ],
    );
  }
}
