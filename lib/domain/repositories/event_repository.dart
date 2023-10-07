import 'package:university_io_backend/data/database/university_db.dart';

abstract class EventRepository {
  Future<void> add(EventsCompanion event);

  Future<void> delete(int id);

  Future<Event> get(int id);

  Future<List<Event>> getAll();
}
