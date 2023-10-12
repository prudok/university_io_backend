import 'package:drift/drift.dart';

@DataClassName('UniversityDormitory')
class UniversityDormitories extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get address => text()();
}
