// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TestModel _$$_TestModelFromJson(Map<String, dynamic> json) => _$_TestModel(
      userId: json['userId'] as String,
      age: json['age'] as int,
      sex: json['sex'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_TestModelToJson(_$_TestModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'age': instance.age,
      'sex': instance.sex,
      'runtimeType': instance.$type,
    };

_$_TestModelNameOnly _$$_TestModelNameOnlyFromJson(Map<String, dynamic> json) =>
    _$_TestModelNameOnly(
      userId: json['userId'] as String,
      age: json['age'] as int? ?? 20,
      sex: json['sex'] as int? ?? 1,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_TestModelNameOnlyToJson(
        _$_TestModelNameOnly instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'age': instance.age,
      'sex': instance.sex,
      'runtimeType': instance.$type,
    };
