// ignore_for_file: constant_identifier_names

// 부품 Enum
import 'package:intl/intl.dart';

enum PartTypeEnum {
  EngineOil,
  EnginFlushing,
  EngineOilFilter,
  AirFilter,
  MissionOil,
  BreakOil,
  BreakPad,
  BreakDisk,
  BreakGrinding,
  AirConditionFilter,
  Tire,
  Battery
}

extension PartTypeEnumExtension on PartTypeEnum {
  String get text => Intl.message(toString().replaceAll(".", ""));
}
