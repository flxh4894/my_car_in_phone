import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_car_in_phone/models/enum/part_type_enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'parts_state.freezed.dart';
part 'parts_state.g.dart';

// 정비 Type 정의
enum RepairTypeEnum { shop, self }

///
/// Part State Model 정의
///
@freezed
class Part with _$Part {
  factory Part({
    required PartTypeEnum partType,
    required bool flag,
    required TextEditingController memo,
    required TextEditingController price,
  }) = _Part;
}

///
/// Parts State
///
@riverpod
class Parts extends _$Parts {
  @override
  List<Part> build() {
    return PartTypeEnum.values
        .map(
          (e) => Part(
            partType: e,
            flag: false,
            memo: TextEditingController(),
            price: TextEditingController(),
          ),
        )
        .toList();
  }

  void updateFlag(int idx) {
    state[idx] = state[idx].copyWith(flag: !state[idx].flag);
    state = [...state];
  }
}

///
/// Parts 에서 Flag가 True인 리스트
/// Selected Parts
///
@riverpod
List<Part> selectedParts(SelectedPartsRef ref) {
  return ref
      .watch(partsProvider)
      .where((element) => element.flag == true)
      .toList();
}

///
/// 정비 타입 State
///
@riverpod
class RepairType extends _$RepairType {
  @override
  RepairTypeEnum build() {
    return RepairTypeEnum.shop;
  }
}

///
/// 주행거리 State
///
@riverpod
class Distance extends _$Distance {
  @override
  TextEditingController build() {
    return TextEditingController();
  }
}
