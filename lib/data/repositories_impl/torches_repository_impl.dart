import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/department_repository.dart';

@singleton
class TorchRepositoryImpl extends TorchRepository {
  TorchRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(TorchesCompanion torch) async {
    await _db.into(_db.torches).insert(torch);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteTorch(id);
  }

  @override
  Future<Torch> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Torch>> getAll() {
    return _db.torchesList;
  }
}