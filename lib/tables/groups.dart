import 'package:drift/drift.dart';

class Groups extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get starYear => integer()();
}
