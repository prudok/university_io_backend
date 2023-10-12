import 'package:university_io_backend/data/database/university_db.dart';

abstract class GTORepository {
  Future<void> add(GTOsCompanion gto);

  Future<void> delete(int id);

  Future<GTO> get(int id);

  Future<List<GTO>> getAll();
}
