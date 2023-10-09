import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/event_repository.dart';

@singleton
class EventRepositoryImpl extends EventRepository {
  EventRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(EventsCompanion event) async {
    await _db.into(_db.events).insert(event);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteEvent(id);
  }

  @override
  Future<Event> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Event>> getAll() {
    return _db.eventsList;
  }
}
