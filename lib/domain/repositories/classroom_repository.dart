import 'package:university_io_backend/data/database/university_db.dart';

abstract class ClassroomRepository {
  Future<void> add(ClassroomsCompanion classroom);

  Future<void> delete(int id);

  Future<Classroom> get(int id);

  Future<List<Classroom>> getAll();
}
