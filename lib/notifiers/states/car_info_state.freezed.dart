// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarInfo _$CarInfoFromJson(Map<String, dynamic> json) {
  return _CarInfo.fromJson(json);
}

/// @nodoc
mixin _$CarInfo {
  String get carNumber => throw _privateConstructorUsedError;
  DateTime get lastRepair => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarInfoCopyWith<CarInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarInfoCopyWith<$Res> {
  factory $CarInfoCopyWith(CarInfo value, $Res Function(CarInfo) then) =
      _$CarInfoCopyWithImpl<$Res, CarInfo>;
  @useResult
  $Res call({String carNumber, DateTime lastRepair});
}

/// @nodoc
class _$CarInfoCopyWithImpl<$Res, $Val extends CarInfo>
    implements $CarInfoCopyWith<$Res> {
  _$CarInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carNumber = null,
    Object? lastRepair = null,
  }) {
    return _then(_value.copyWith(
      carNumber: null == carNumber
          ? _value.carNumber
          : carNumber // ignore: cast_nullable_to_non_nullable
              as String,
      lastRepair: null == lastRepair
          ? _value.lastRepair
          : lastRepair // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarInfoCopyWith<$Res> implements $CarInfoCopyWith<$Res> {
  factory _$$_CarInfoCopyWith(
          _$_CarInfo value, $Res Function(_$_CarInfo) then) =
      __$$_CarInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String carNumber, DateTime lastRepair});
}

/// @nodoc
class __$$_CarInfoCopyWithImpl<$Res>
    extends _$CarInfoCopyWithImpl<$Res, _$_CarInfo>
    implements _$$_CarInfoCopyWith<$Res> {
  __$$_CarInfoCopyWithImpl(_$_CarInfo _value, $Res Function(_$_CarInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carNumber = null,
    Object? lastRepair = null,
  }) {
    return _then(_$_CarInfo(
      carNumber: null == carNumber
          ? _value.carNumber
          : carNumber // ignore: cast_nullable_to_non_nullable
              as String,
      lastRepair: null == lastRepair
          ? _value.lastRepair
          : lastRepair // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarInfo implements _CarInfo {
  _$_CarInfo({required this.carNumber, required this.lastRepair});

  factory _$_CarInfo.fromJson(Map<String, dynamic> json) =>
      _$$_CarInfoFromJson(json);

  @override
  final String carNumber;
  @override
  final DateTime lastRepair;

  @override
  String toString() {
    return 'CarInfo(carNumber: $carNumber, lastRepair: $lastRepair)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarInfo &&
            (identical(other.carNumber, carNumber) ||
                other.carNumber == carNumber) &&
            (identical(other.lastRepair, lastRepair) ||
                other.lastRepair == lastRepair));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, carNumber, lastRepair);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarInfoCopyWith<_$_CarInfo> get copyWith =>
      __$$_CarInfoCopyWithImpl<_$_CarInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarInfoToJson(
      this,
    );
  }
}

abstract class _CarInfo implements CarInfo {
  factory _CarInfo(
      {required final String carNumber,
      required final DateTime lastRepair}) = _$_CarInfo;

  factory _CarInfo.fromJson(Map<String, dynamic> json) = _$_CarInfo.fromJson;

  @override
  String get carNumber;
  @override
  DateTime get lastRepair;
  @override
  @JsonKey(ignore: true)
  _$$_CarInfoCopyWith<_$_CarInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
