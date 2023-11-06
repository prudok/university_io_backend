import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/news_repository.dart';

@singleton
class NewsRepositoryImpl extends NewsRepository {
  NewsRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(NewsCompanion news) async {
    await _db.into(_db.news).insert(news);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteNew(id);
  }

  @override
  Future<FNews> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<FNews>> getAll() {
    return _db.newsList;
  }
}
