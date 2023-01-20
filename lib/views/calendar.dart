import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:my_car_in_phone/notifiers/states/calendar_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:table_calendar/table_calendar.dart';

part 'calendar.g.dart';

@riverpod
class CalendarNotifier extends _$CalendarNotifier {
  @override
  CalendarState build() {
    return CalendarState(
      focusedDay: DateTime.now(),
      selectedDay: DateTime.now(),
      firstDay: DateTime(1970, 1, 1),
      lastDay: DateTime(2099, 12, 31),
    );
  }

  void updateDaySelected(DateTime selectedDay) {
    state = state.copyWith(selectedDay: selectedDay);
  }
}

class CalendarPage extends ConsumerWidget {
  CalendarPage({super.key});
  final cp = calendarNotifierProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: TableCalendar(
          focusedDay: ref.watch(cp).focusedDay,
          selectedDayPredicate: (day) {
            return isSameDay(day, ref.watch(cp).selectedDay);
          },
          onDaySelected: (selectedDay, focusedDay) {
            ref.read(cp.notifier).updateDaySelected(selectedDay);
          },
          firstDay: ref.watch(cp).firstDay,
          lastDay: ref.watch(cp).lastDay,
          calendarFormat: CalendarFormat.month,
          availableCalendarFormats: const {
            CalendarFormat.month: "Month",
          },
          eventLoader: (day) {
            return [1];
          },
          calendarBuilders: CalendarBuilders(
            dowBuilder: (context, day) {
              if (day.weekday == DateTime.sunday) {
                final text = DateFormat.E().format(day);
                return Center(
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.red),
                  ),
                );
              } else if (day.weekday == DateTime.saturday) {
                final text = DateFormat.E().format(day);
                return Center(
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.blue),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
