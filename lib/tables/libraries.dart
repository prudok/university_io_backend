import 'package:drift/drift.dart';

class Libraries extends Table {
  IntColumn get id => integer().autoIncrement()();
  BoolColumn get availability => boolean()();
}
