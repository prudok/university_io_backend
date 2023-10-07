import 'package:university_io_backend/data/database/university_db.dart';

abstract class ProjectRepository {
  Future<void> add(ProjectsCompanion project);

  Future<void> delete(int id);

  Future<Project> get(int id);

  Future<List<Project>> getAll();
}
