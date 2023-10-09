import 'package:drift/drift.dart';

class Projects extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  TextColumn get startDate => text()();
  TextColumn get endDate => text()();
}
