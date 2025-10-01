import 'package:bling_coding_challenge/features/age_estimation/application/age_estimation_bloc/age_estimation_bloc.dart';
import 'package:bling_coding_challenge/features/age_estimation/infrastructure/repositories/age_estimation_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupDependencyInjection() {

  locator.registerLazySingleton(() => Dio());
  locator.registerLazySingleton(() => AgeEstimationRepositoryImpl(locator.get<Dio>()));

  locator.registerFactory(() => AgeEstimationBloc(locator<AgeEstimationRepositoryImpl>()));

}