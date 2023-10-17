import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/library_repository.dart';

@singleton
class LibraryRepositoryImpl extends LibraryRepository {
  LibraryRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(LibrariesCompanion library) async {
    await _db.into(_db.libraries).insert(library);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteLibrary(id);
  }

  @override
  Future<Library> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Library>> getAll() {
    return _db.librariesList;
  }
}