import 'package:drift/drift.dart';

class Books extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get author => text()();
  TextColumn get publicationYear => text()();
}
