import 'package:dart_frog/dart_frog.dart';
import 'package:university_io_backend/config/service_locator.dart';
import 'package:university_io_backend/data/repositories_impl/repositories_impl.dart';

Handler middleware(Handler handler) {
  return handler.use(
    provider<VolunteeringRepositoryImpl>((context) => getIt.get<VolunteeringRepositoryImpl>()),
  );
}