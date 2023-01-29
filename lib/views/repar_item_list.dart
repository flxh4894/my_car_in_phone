import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_car_in_phone/models/enum/part_type_enum.dart';

part 'repar_item_list.freezed.dart';

/// 정비 관련 목록 페이지
class RepairItemListPage extends ConsumerWidget {
  RepairItemListPage({super.key});

  /// 정비 관련 항목 리스트
  final List<Parts> parts =
      PartTypeEnum.values.map((e) => Parts(partType: e, flag: false)).toList();

  /// 선택된 정비 항목 리스트
  final List<Parts> selectedList = [];

  /// 선택된 항목 리스트 만들기
  void updateFlag(int idx, PartTypeEnum type, bool flag) {
    if (flag) {
      // 추가
      selectedList.add(parts[idx]);
    } else {
      // 삭제
      selectedList.removeWhere((element) => element.partType == type);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _RowWidget(
              parts: parts,
              callback: updateFlag,
            ),
            TextButton(
              onPressed: () {
                log(selectedList.toString());
              },
              child: const Text("선택된 리스트"),
            ),
          ],
        ),
      ),
    );
  }
}

class _RowWidget extends StatefulWidget {
  const _RowWidget({
    required this.parts,
    required this.callback,
  });

  final List<Parts> parts;
  final Function(int, PartTypeEnum, bool) callback;

  @override
  State<_RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<_RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (Parts part in widget.parts)
          MaterialButton(
            onPressed: () {
              final int idx = widget.parts.indexOf(part);
              final PartTypeEnum type = widget.parts[idx].partType;
              final bool flag = !widget.parts[idx].flag;

              setState(() {
                widget.parts[idx] = widget.parts[idx].copyWith(flag: flag);
                widget.callback(idx, type, flag);
              });
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(part.partType.text),
                  Container(
                    height: 10,
                    width: 10,
                    color: widget.parts[widget.parts.indexOf(part)].flag
                        ? Colors.green
                        : Colors.redAccent,
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
