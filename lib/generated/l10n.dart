// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `반갑습니다.`
  String get title {
    return Intl.message(
      '반갑습니다.',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `차량 관리{number}`
  String info(Object number) {
    return Intl.message(
      '차량 관리$number',
      name: 'info',
      desc: '',
      args: [number],
    );
  }

  /// `엔진오일`
  String get PartTypeEnumEngineOil {
    return Intl.message(
      '엔진오일',
      name: 'PartTypeEnumEngineOil',
      desc: '',
      args: [],
    );
  }

  /// `엔진오일플러싱(세척)`
  String get PartTypeEnumEnginFlushing {
    return Intl.message(
      '엔진오일플러싱(세척)',
      name: 'PartTypeEnumEnginFlushing',
      desc: '',
      args: [],
    );
  }

  /// `엔진오일필터`
  String get PartTypeEnumEngineOilFilter {
    return Intl.message(
      '엔진오일필터',
      name: 'PartTypeEnumEngineOilFilter',
      desc: '',
      args: [],
    );
  }

  /// `에어필터`
  String get PartTypeEnumAirFilter {
    return Intl.message(
      '에어필터',
      name: 'PartTypeEnumAirFilter',
      desc: '',
      args: [],
    );
  }

  /// `미션오일`
  String get PartTypeEnumMissionOil {
    return Intl.message(
      '미션오일',
      name: 'PartTypeEnumMissionOil',
      desc: '',
      args: [],
    );
  }

  /// `브레이크오일`
  String get PartTypeEnumBreakOil {
    return Intl.message(
      '브레이크오일',
      name: 'PartTypeEnumBreakOil',
      desc: '',
      args: [],
    );
  }

  /// `브레이크패드`
  String get PartTypeEnumBreakPad {
    return Intl.message(
      '브레이크패드',
      name: 'PartTypeEnumBreakPad',
      desc: '',
      args: [],
    );
  }

  /// `브레이크디스크`
  String get PartTypeEnumBreakDisk {
    return Intl.message(
      '브레이크디스크',
      name: 'PartTypeEnumBreakDisk',
      desc: '',
      args: [],
    );
  }

  /// `브레이크연마`
  String get PartTypeEnumBreakGrinding {
    return Intl.message(
      '브레이크연마',
      name: 'PartTypeEnumBreakGrinding',
      desc: '',
      args: [],
    );
  }

  /// `에어컨필터`
  String get PartTypeEnumAirConditionFilter {
    return Intl.message(
      '에어컨필터',
      name: 'PartTypeEnumAirConditionFilter',
      desc: '',
      args: [],
    );
  }

  /// `타이어`
  String get PartTypeEnumTire {
    return Intl.message(
      '타이어',
      name: 'PartTypeEnumTire',
      desc: '',
      args: [],
    );
  }

  /// `배터리`
  String get PartTypeEnumBattery {
    return Intl.message(
      '배터리',
      name: 'PartTypeEnumBattery',
      desc: '',
      args: [],
    );
  }

  /// `더보기`
  String get seeMore {
    return Intl.message(
      '더보기',
      name: 'seeMore',
      desc: '',
      args: [],
    );
  }

  /// `내차정보`
  String get carInfo {
    return Intl.message(
      '내차정보',
      name: 'carInfo',
      desc: '',
      args: [],
    );
  }

  /// `차량 관리`
  String get carManage {
    return Intl.message(
      '차량 관리',
      name: 'carManage',
      desc: '',
      args: [],
    );
  }

  /// `{day}일 뒤에 교체 필요.`
  String needChange(Object day) {
    return Intl.message(
      '$day일 뒤에 교체 필요.',
      name: 'needChange',
      desc: '',
      args: [day],
    );
  }

  /// `교체예정일이 지났습니다.`
  String get needChangeNow {
    return Intl.message(
      '교체예정일이 지났습니다.',
      name: 'needChangeNow',
      desc: '',
      args: [],
    );
  }

  /// `나의 정비 내역`
  String get repairRecord {
    return Intl.message(
      '나의 정비 내역',
      name: 'repairRecord',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ko'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
