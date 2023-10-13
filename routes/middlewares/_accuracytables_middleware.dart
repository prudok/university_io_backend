import 'package:dart_frog/dart_frog.dart';
import 'package:university_io_backend/config/service_locator.dart';

Handler middleware(Handler handler) {
  return handler.use(
    provider<AccuracytableRepositoryImpl>((context) => getIt.get<AccuracyTablesRepositoryImpl>()),
  );
}
