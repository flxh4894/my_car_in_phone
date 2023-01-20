import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_state.freezed.dart';
part 'calendar_state.g.dart';

@freezed
class CalendarState with _$CalendarState {
  factory CalendarState({
    required DateTime focusedDay,
    required DateTime selectedDay,
    required DateTime firstDay,
    required DateTime lastDay,
    required Map<String, List> events,
  }) = _CalendarState;

  factory CalendarState.fromJson(Map<String, Object?> json) =>
      _$CalendarStateFromJson(json);
}
