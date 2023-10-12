import 'package:university_io_backend/data/database/university_db.dart';

abstract class ScheduleRepository {
  Future<void> add(SchedulesCompanion schedule);

  Future<void> delete(int id);

  Future<Schedule> get(int id);

  Future<List<Schedule>> getAll();
}