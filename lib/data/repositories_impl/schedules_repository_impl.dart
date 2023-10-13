import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/schedule_repository.dart';

@singleton
class ScheduleRepositoryImpl extends ScheduleRepository {
  ScheduleRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(SchedulesCompanion schedule) async {
    await _db.into(_db.schedules).insert(schedule);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteSchedule(id);
  }

  @override
  Future<Schedule> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Schedule>> getAll() {
    return _db.schedulesList;
  }
}