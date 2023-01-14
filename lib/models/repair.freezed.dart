// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepairModel _$RepairModelFromJson(Map<String, dynamic> json) {
  return _RepairModel.fromJson(json);
}

/// @nodoc
mixin _$RepairModel {
  String get name => throw _privateConstructorUsedError;
  DateTime get lastTime => throw _privateConstructorUsedError;
  String get typeEnum => throw _privateConstructorUsedError;
  int get cycle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepairModelCopyWith<RepairModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepairModelCopyWith<$Res> {
  factory $RepairModelCopyWith(
          RepairModel value, $Res Function(RepairModel) then) =
      _$RepairModelCopyWithImpl<$Res, RepairModel>;
  @useResult
  $Res call({String name, DateTime lastTime, String typeEnum, int cycle});
}

/// @nodoc
class _$RepairModelCopyWithImpl<$Res, $Val extends RepairModel>
    implements $RepairModelCopyWith<$Res> {
  _$RepairModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lastTime = null,
    Object? typeEnum = null,
    Object? cycle = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastTime: null == lastTime
          ? _value.lastTime
          : lastTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      typeEnum: null == typeEnum
          ? _value.typeEnum
          : typeEnum // ignore: cast_nullable_to_non_nullable
              as String,
      cycle: null == cycle
          ? _value.cycle
          : cycle // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RepairModelCopyWith<$Res>
    implements $RepairModelCopyWith<$Res> {
  factory _$$_RepairModelCopyWith(
          _$_RepairModel value, $Res Function(_$_RepairModel) then) =
      __$$_RepairModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, DateTime lastTime, String typeEnum, int cycle});
}

/// @nodoc
class __$$_RepairModelCopyWithImpl<$Res>
    extends _$RepairModelCopyWithImpl<$Res, _$_RepairModel>
    implements _$$_RepairModelCopyWith<$Res> {
  __$$_RepairModelCopyWithImpl(
      _$_RepairModel _value, $Res Function(_$_RepairModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lastTime = null,
    Object? typeEnum = null,
    Object? cycle = null,
  }) {
    return _then(_$_RepairModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastTime: null == lastTime
          ? _value.lastTime
          : lastTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      typeEnum: null == typeEnum
          ? _value.typeEnum
          : typeEnum // ignore: cast_nullable_to_non_nullable
              as String,
      cycle: null == cycle
          ? _value.cycle
          : cycle // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepairModel implements _RepairModel {
  _$_RepairModel(
      {required this.name,
      required this.lastTime,
      required this.typeEnum,
      required this.cycle});

  factory _$_RepairModel.fromJson(Map<String, dynamic> json) =>
      _$$_RepairModelFromJson(json);

  @override
  final String name;
  @override
  final DateTime lastTime;
  @override
  final String typeEnum;
  @override
  final int cycle;

  @override
  String toString() {
    return 'RepairModel(name: $name, lastTime: $lastTime, typeEnum: $typeEnum, cycle: $cycle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepairModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastTime, lastTime) ||
                other.lastTime == lastTime) &&
            (identical(other.typeEnum, typeEnum) ||
                other.typeEnum == typeEnum) &&
            (identical(other.cycle, cycle) || other.cycle == cycle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, lastTime, typeEnum, cycle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepairModelCopyWith<_$_RepairModel> get copyWith =>
      __$$_RepairModelCopyWithImpl<_$_RepairModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepairModelToJson(
      this,
    );
  }
}

abstract class _RepairModel implements RepairModel {
  factory _RepairModel(
      {required final String name,
      required final DateTime lastTime,
      required final String typeEnum,
      required final int cycle}) = _$_RepairModel;

  factory _RepairModel.fromJson(Map<String, dynamic> json) =
      _$_RepairModel.fromJson;

  @override
  String get name;
  @override
  DateTime get lastTime;
  @override
  String get typeEnum;
  @override
  int get cycle;
  @override
  @JsonKey(ignore: true)
  _$$_RepairModelCopyWith<_$_RepairModel> get copyWith =>
      throw _privateConstructorUsedError;
}
