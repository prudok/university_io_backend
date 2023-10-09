import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:university_io_backend/config/service_locator.config.dart';

final getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
void configureDependencies() => getIt.init();
