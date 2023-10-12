import 'package:drift/drift.dart';

@DataClassName('Library')
class Libraries extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get bookId => integer()();
  BoolColumn get availability => boolean()();
}
