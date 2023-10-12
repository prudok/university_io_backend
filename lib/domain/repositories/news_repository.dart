import 'package:university_io_backend/data/database/university_db.dart';

abstract class NewsRepository {
  Future<void> add(NewsCompanion news);

  Future<void> delete(int id);

  Future<FNews> get(int id);

  Future<List<FNews>> getAll();
}
