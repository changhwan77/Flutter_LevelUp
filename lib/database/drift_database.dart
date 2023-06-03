import 'package:drift/drift.dart';
import 'package:flutter_level_up/model/schedule.dart';

part 'drift_database.g.dart';

@DriftDatabase(tables: [
  Schedules,
])
class LocalDatabase extends _$LocalDatabase {
  Stream<List<Schedule>> watchSchedules(DateTime date) =>
      (select(schedules)..where((tbl) => tbl.date.equals(date))).watch();
}
