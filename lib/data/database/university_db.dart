import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;
import 'package:university_io_backend/data/tables/tables.dart';

part 'university_db.g.dart';

@singleton
@DriftDatabase(
  tables: [
    Events,
    Projects,
    Departments,
    Students,
    Teachers,
    DepartmentTeacherLinks,
  ],
)
class UniversityDatabase extends _$UniversityDatabase {
  UniversityDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<void> deleteEverything() {
    return transaction(() async {
      for (final table in allTables) {
        await delete(table).go();
      }
    });
  }

  // GET queries
  Future<List<Teacher>> get teachersList => select(teachers).get();

  Future<List<Student>> get studentsList => select(students).get();

  Future<List<Event>> get eventsList => select(events).get();

  Future<List<Project>> get projectsList => select(projects).get();

  Future<List<Department>> get departmentsList => select(departments).get();

  // DELETE queries
  Future<int> deleteTeacher(int id) async {
    return (delete(teachers)..where((t) => t.id.equals(id))).go();
  }

  Future<int> deleteStudent(int id) async {
    return (delete(students)..where((s) => s.id.equals(id))).go();
  }

  Future<int> deleteEvent(int id) async {
    return (delete(events)..where((e) => e.id.equals(id))).go();
  }

  Future<int> deleteProject(int id) async {
    return (delete(projects)..where((p) => p.id.equals(id))).go();
  }

  Future<int> deleteDepartment(int id) async {
    return (delete(departments)..where((d) => d.id.equals(id))).go();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = Directory('university_project');
    final file = File(path.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
