import 'package:university_io_backend/data/database/university_db.dart';

abstract class TorchesRepository {
  Future<void> add(TorchesCompanion torch);

  Future<void> delete(int id);

  Future<Torch> get(int id);

  Future<List<Torch>> getAll();
}