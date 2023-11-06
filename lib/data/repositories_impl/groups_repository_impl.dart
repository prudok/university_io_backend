import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/repositories.dart';

@singleton
class GroupRepositoryImpl extends GroupRepository {
  GroupRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(GroupsCompanion group) async {
    await _db.into(_db.groups).insert(group);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteGroup(id);
  }

  @override
  Future<Group> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Group>> getAll() {
    return _db.groupsList;
  }
}
