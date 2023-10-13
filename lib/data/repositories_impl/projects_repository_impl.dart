import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/project_repository.dart';

@singleton
class ProjectRepositoryImpl extends ProjectRepository {
  ProjectRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(ProjectsCompanion project) async {
    await _db.into(_db.projects).insert(project);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteProject(id);
  }

  @override
  Future<Project> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Project>> getAll() {
    return _db.projectsList;
  }
}