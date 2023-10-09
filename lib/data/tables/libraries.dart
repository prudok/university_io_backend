import 'package:drift/drift.dart';

class Libraries extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get bookId => integer()();
  BoolColumn get availability => boolean()();
}
