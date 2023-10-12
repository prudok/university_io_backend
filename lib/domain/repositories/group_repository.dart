import 'package:university_io_backend/data/database/university_db.dart';

abstract class GroupRepository {
  Future<void> add(GroupsCompanion group);

  Future<void> delete(int id);

  Future<Group> get(int id);

  Future<List<Group>> getAll();
}
