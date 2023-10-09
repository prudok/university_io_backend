import 'package:drift/drift.dart';

class Marks extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get grade => integer()();
}
