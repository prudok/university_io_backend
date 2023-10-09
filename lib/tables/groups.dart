import 'package:drift/drift.dart';

class Groups extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get starYear => integer()();
}
