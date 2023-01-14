// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_info_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarInfo _$$_CarInfoFromJson(Map<String, dynamic> json) => _$_CarInfo(
      carNumber: json['carNumber'] as String,
      lastRepair: DateTime.parse(json['lastRepair'] as String),
    );

Map<String, dynamic> _$$_CarInfoToJson(_$_CarInfo instance) =>
    <String, dynamic>{
      'carNumber': instance.carNumber,
      'lastRepair': instance.lastRepair.toIso8601String(),
    };
