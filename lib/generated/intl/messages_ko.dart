// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ko';

  static String m0(number) => "차량 관리${number}";

  static String m1(day) => "${day}일 뒤에 교체 필요.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "PartTypeEnumAirConditionFilter":
            MessageLookupByLibrary.simpleMessage("에어컨필터"),
        "PartTypeEnumAirFilter": MessageLookupByLibrary.simpleMessage("에어필터"),
        "PartTypeEnumBattery": MessageLookupByLibrary.simpleMessage("배터리"),
        "PartTypeEnumBreakDisk":
            MessageLookupByLibrary.simpleMessage("브레이크디스크"),
        "PartTypeEnumBreakGrinding":
            MessageLookupByLibrary.simpleMessage("브레이크연마"),
        "PartTypeEnumBreakOil": MessageLookupByLibrary.simpleMessage("브레이크오일"),
        "PartTypeEnumBreakPad": MessageLookupByLibrary.simpleMessage("브레이크패드"),
        "PartTypeEnumEnginFlushing":
            MessageLookupByLibrary.simpleMessage("엔진오일플러싱(세척)"),
        "PartTypeEnumEngineOil": MessageLookupByLibrary.simpleMessage("엔진오일"),
        "PartTypeEnumEngineOilFilter":
            MessageLookupByLibrary.simpleMessage("엔진오일필터"),
        "PartTypeEnumMissionOil": MessageLookupByLibrary.simpleMessage("미션오일"),
        "PartTypeEnumTire": MessageLookupByLibrary.simpleMessage("타이어"),
        "carInfo": MessageLookupByLibrary.simpleMessage("내차정보"),
        "carManage": MessageLookupByLibrary.simpleMessage("차량 관리"),
        "info": m0,
        "needChange": m1,
        "needChangeNow": MessageLookupByLibrary.simpleMessage("교체예정일이 지났습니다."),
        "repadRecord": MessageLookupByLibrary.simpleMessage("나의 정비 내역"),
        "seeMore": MessageLookupByLibrary.simpleMessage("더보기"),
        "title": MessageLookupByLibrary.simpleMessage("반갑습니다.")
      };
}
