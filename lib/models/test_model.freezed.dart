// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestModel _$TestModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _TestModel.fromJson(json);
    case 'nameOnly':
      return _TestModelNameOnly.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TestModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TestModel {
  String get userId => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  int? get sex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, int age, int? sex) $default, {
    required TResult Function(String userId, int age, int sex) nameOnly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId, int age, int? sex)? $default, {
    TResult? Function(String userId, int age, int sex)? nameOnly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, int age, int? sex)? $default, {
    TResult Function(String userId, int age, int sex)? nameOnly,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestModel value) $default, {
    required TResult Function(_TestModelNameOnly value) nameOnly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestModel value)? $default, {
    TResult? Function(_TestModelNameOnly value)? nameOnly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestModel value)? $default, {
    TResult Function(_TestModelNameOnly value)? nameOnly,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestModelCopyWith<TestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestModelCopyWith<$Res> {
  factory $TestModelCopyWith(TestModel value, $Res Function(TestModel) then) =
      _$TestModelCopyWithImpl<$Res, TestModel>;
  @useResult
  $Res call({String userId, int age, int sex});
}

/// @nodoc
class _$TestModelCopyWithImpl<$Res, $Val extends TestModel>
    implements $TestModelCopyWith<$Res> {
  _$TestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? age = null,
    Object? sex = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      sex: null == sex
          ? _value.sex!
          : sex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestModelCopyWith<$Res> implements $TestModelCopyWith<$Res> {
  factory _$$_TestModelCopyWith(
          _$_TestModel value, $Res Function(_$_TestModel) then) =
      __$$_TestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, int age, int? sex});
}

/// @nodoc
class __$$_TestModelCopyWithImpl<$Res>
    extends _$TestModelCopyWithImpl<$Res, _$_TestModel>
    implements _$$_TestModelCopyWith<$Res> {
  __$$_TestModelCopyWithImpl(
      _$_TestModel _value, $Res Function(_$_TestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? age = null,
    Object? sex = freezed,
  }) {
    return _then(_$_TestModel(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestModel with DiagnosticableTreeMixin implements _TestModel {
  _$_TestModel(
      {required this.userId, required this.age, this.sex, final String? $type})
      : $type = $type ?? 'default';

  factory _$_TestModel.fromJson(Map<String, dynamic> json) =>
      _$$_TestModelFromJson(json);

  @override
  final String userId;
  @override
  final int age;
  @override
  final int? sex;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestModel(userId: $userId, age: $age, sex: $sex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestModel'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('sex', sex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.sex, sex) || other.sex == sex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, age, sex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestModelCopyWith<_$_TestModel> get copyWith =>
      __$$_TestModelCopyWithImpl<_$_TestModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, int age, int? sex) $default, {
    required TResult Function(String userId, int age, int sex) nameOnly,
  }) {
    return $default(userId, age, sex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId, int age, int? sex)? $default, {
    TResult? Function(String userId, int age, int sex)? nameOnly,
  }) {
    return $default?.call(userId, age, sex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, int age, int? sex)? $default, {
    TResult Function(String userId, int age, int sex)? nameOnly,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(userId, age, sex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestModel value) $default, {
    required TResult Function(_TestModelNameOnly value) nameOnly,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestModel value)? $default, {
    TResult? Function(_TestModelNameOnly value)? nameOnly,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestModel value)? $default, {
    TResult Function(_TestModelNameOnly value)? nameOnly,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestModelToJson(
      this,
    );
  }
}

abstract class _TestModel implements TestModel {
  factory _TestModel(
      {required final String userId,
      required final int age,
      final int? sex}) = _$_TestModel;

  factory _TestModel.fromJson(Map<String, dynamic> json) =
      _$_TestModel.fromJson;

  @override
  String get userId;
  @override
  int get age;
  @override
  int? get sex;
  @override
  @JsonKey(ignore: true)
  _$$_TestModelCopyWith<_$_TestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TestModelNameOnlyCopyWith<$Res>
    implements $TestModelCopyWith<$Res> {
  factory _$$_TestModelNameOnlyCopyWith(_$_TestModelNameOnly value,
          $Res Function(_$_TestModelNameOnly) then) =
      __$$_TestModelNameOnlyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, int age, int sex});
}

/// @nodoc
class __$$_TestModelNameOnlyCopyWithImpl<$Res>
    extends _$TestModelCopyWithImpl<$Res, _$_TestModelNameOnly>
    implements _$$_TestModelNameOnlyCopyWith<$Res> {
  __$$_TestModelNameOnlyCopyWithImpl(
      _$_TestModelNameOnly _value, $Res Function(_$_TestModelNameOnly) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? age = null,
    Object? sex = null,
  }) {
    return _then(_$_TestModelNameOnly(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestModelNameOnly
    with DiagnosticableTreeMixin
    implements _TestModelNameOnly {
  _$_TestModelNameOnly(
      {required this.userId, this.age = 20, this.sex = 1, final String? $type})
      : $type = $type ?? 'nameOnly';

  factory _$_TestModelNameOnly.fromJson(Map<String, dynamic> json) =>
      _$$_TestModelNameOnlyFromJson(json);

  @override
  final String userId;
  @override
  @JsonKey()
  final int age;
  @override
  @JsonKey()
  final int sex;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestModel.nameOnly(userId: $userId, age: $age, sex: $sex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestModel.nameOnly'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('sex', sex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestModelNameOnly &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.sex, sex) || other.sex == sex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, age, sex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestModelNameOnlyCopyWith<_$_TestModelNameOnly> get copyWith =>
      __$$_TestModelNameOnlyCopyWithImpl<_$_TestModelNameOnly>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, int age, int? sex) $default, {
    required TResult Function(String userId, int age, int sex) nameOnly,
  }) {
    return nameOnly(userId, age, sex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId, int age, int? sex)? $default, {
    TResult? Function(String userId, int age, int sex)? nameOnly,
  }) {
    return nameOnly?.call(userId, age, sex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, int age, int? sex)? $default, {
    TResult Function(String userId, int age, int sex)? nameOnly,
    required TResult orElse(),
  }) {
    if (nameOnly != null) {
      return nameOnly(userId, age, sex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestModel value) $default, {
    required TResult Function(_TestModelNameOnly value) nameOnly,
  }) {
    return nameOnly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestModel value)? $default, {
    TResult? Function(_TestModelNameOnly value)? nameOnly,
  }) {
    return nameOnly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestModel value)? $default, {
    TResult Function(_TestModelNameOnly value)? nameOnly,
    required TResult orElse(),
  }) {
    if (nameOnly != null) {
      return nameOnly(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestModelNameOnlyToJson(
      this,
    );
  }
}

abstract class _TestModelNameOnly implements TestModel {
  factory _TestModelNameOnly(
      {required final String userId,
      final int age,
      final int sex}) = _$_TestModelNameOnly;

  factory _TestModelNameOnly.fromJson(Map<String, dynamic> json) =
      _$_TestModelNameOnly.fromJson;

  @override
  String get userId;
  @override
  int get age;
  @override
  int get sex;
  @override
  @JsonKey(ignore: true)
  _$$_TestModelNameOnlyCopyWith<_$_TestModelNameOnly> get copyWith =>
      throw _privateConstructorUsedError;
}
