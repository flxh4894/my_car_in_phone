// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepairModel _$$_RepairModelFromJson(Map<String, dynamic> json) =>
    _$_RepairModel(
      name: json['name'] as String,
      lastTime: DateTime.parse(json['lastTime'] as String),
      typeEnum: json['typeEnum'] as String,
      cycle: json['cycle'] as int,
    );

Map<String, dynamic> _$$_RepairModelToJson(_$_RepairModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lastTime': instance.lastTime.toIso8601String(),
      'typeEnum': instance.typeEnum,
      'cycle': instance.cycle,
    };
