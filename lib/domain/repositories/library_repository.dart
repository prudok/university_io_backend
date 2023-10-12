import 'package:university_io_backend/data/database/university_db.dart';

abstract class LibraryRepository {
  Future<void> add(LibrariesCompanion library);

  Future<void> delete(int id);

  Future<Library> get(int id);

  Future<List<Library>> getAll();
}
