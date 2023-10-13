import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/news_repository.dart';

@singleton
class NewsRepositoryImpl extends NewsRepository {
  NewsRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(DepartmentsCompanion department) async {
    await _db.into(_db.news).insert(department);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteNews(id);
  }

  @override
  Future<Department> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Department>> getAll() {
    return _db.newsList;
  }
}