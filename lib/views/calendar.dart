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
      events: {},
    );
  }

  void updateDaySelected(DateTime selectedDay, DateTime focusedDay) {
    state = state.copyWith(
      selectedDay: selectedDay,
      focusedDay: focusedDay,
    );
  }

  void addDayEvents(DateTime selectedDay) {
    final key = DateFormat('yyyyMMdd').format(selectedDay);
    Map<String, List> result = Map<String, List>.from(state.events);

    if (state.events[key] == null) {
      result[key] = ["새로 추가함"];
    } else {
      result[key] = [...state.events[key]!, "기존에 더해짐"];
    }
    state = state.copyWith(events: result);
  }

  String get eventKey => DateFormat('yyyyMMdd').format(state.selectedDay);
}

@riverpod
List<String> events(EventsRef ref) {
  final CalendarState cw = ref.watch(calendarNotifierProvider);
  final key = ref.read(calendarNotifierProvider.notifier).eventKey;

  return List<String>.from((cw.events[key] ?? []));
}

class CalendarPage extends ConsumerWidget {
  CalendarPage({super.key});
  final cp = calendarNotifierProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            TableCalendar(
              focusedDay: ref.watch(cp).focusedDay,
              selectedDayPredicate: (day) {
                return isSameDay(day, ref.watch(cp).selectedDay);
              },
              onDaySelected: (selectedDay, focusedDay) {
                ref.read(cp.notifier).addDayEvents(selectedDay);
                ref
                    .read(cp.notifier)
                    .updateDaySelected(selectedDay, focusedDay);
              },
              firstDay: ref.watch(cp).firstDay,
              lastDay: ref.watch(cp).lastDay,
              calendarFormat: CalendarFormat.month,
              availableCalendarFormats: const {
                CalendarFormat.month: "Month",
              },
              headerStyle: const HeaderStyle(
                titleCentered: true,
              ),
              eventLoader: (day) {
                final key = DateFormat('yyyyMMdd').format(day);
                return ref.watch(cp).events[key] ?? [];
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
                defaultBuilder: (context, day, focusedDay) {
                  Color? color;
                  if (day.weekday == DateTime.sunday) {
                    color = Colors.redAccent;
                  } else if (day.weekday == DateTime.saturday) {
                    color = Colors.blueAccent;
                  }

                  return Container(
                    alignment: Alignment.center,
                    child: Text(
                      day.day.toString(),
                      style: TextStyle(color: color),
                    ),
                  );
                },
                markerBuilder: (context, day, events) {
                  return events.isEmpty
                      ? const Offstage()
                      : Container(
                          width: 10,
                          height: 10,
                          color: Colors.amber,
                          alignment: Alignment.center,
                          child: Text(
                            events.length.toString(),
                            style: const TextStyle(fontSize: 8),
                          ),
                        );
                },
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.green.withOpacity(0.2),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (String event in ref.watch(eventsProvider))
                        Text(event)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
