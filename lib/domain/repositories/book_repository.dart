import 'package:university_io_backend/data/database/university_db.dart';

abstract class BookRepository {
  Future<void> add(BooksCompanion book);

  Future<void> delete(int id);

  Future<Book> get(int id);

  Future<List<Book>> getAll();
}
