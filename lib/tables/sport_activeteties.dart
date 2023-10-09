import 'package:drift/drift.dart';

class SportActiveties extends Table {
  TextColumn get name => text()();
  IntColumn get GtoId => integer().references(Gto, #id)();
  IntColumn get sportTeamsId => integer().references(SportTeams, #id)();
  IntColumn get allianceId => integer().references(Alliance, #id)();
}
