import 'package:flutter_app/data/repositories/quiz_repository_impl.dart';
import 'package:flutter_app/domain/repositories/dashboard_repository.dart';
import 'package:flutter_app/domain/repositories/quiz_repository.dart';
import 'package:get_it/get_it.dart';

import 'data/repositories/dashboard_repository_impl.dart';

final GetIt serviceLocator = GetIt.instance;

void initServiceLocator() {
  serviceLocator
      .registerLazySingleton<QuizRepository>(() => QuizRepositoryImpl());
  serviceLocator.registerLazySingleton<DashboardRepository>(
      () => DashboardRepositoryImpl());
}
