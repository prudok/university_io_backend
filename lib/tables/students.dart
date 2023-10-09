import 'package:drift/drift.dart';
import 'package:university_io_backend/tables/groups.dart';

class Students extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get groupId => integer().references(Groups, #id)();
  TextColumn get firstName => text()();
  TextColumn get lastName => text()();
  TextColumn get email => text()();
  TextColumn get phoneNumber => text()();
  TextColumn get address => text()();
}
