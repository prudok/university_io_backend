import 'package:drift/drift.dart';
import 'package:university_io_backend/data/tables/tables.dart';

@DataClassName('SportActivity')
class SportActivities extends Table {
  TextColumn get name => text()();
  IntColumn get gTOId => integer().references(GTOs, #id)();
  IntColumn get sportTeamsId => integer().references(SportTeams, #id)();
  IntColumn get allianceId => integer().references(Alliances, #id)();
}
