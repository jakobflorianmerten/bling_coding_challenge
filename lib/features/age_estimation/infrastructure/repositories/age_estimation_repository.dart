import 'package:bling_coding_challenge/features/age_estimation/domain/repositories/age_estimation_repository.dart';
import 'package:bling_coding_challenge/features/age_estimation/domain/value_objects/age.dart';
import 'package:bling_coding_challenge/features/age_estimation/domain/value_objects/name.dart';
import 'package:bling_coding_challenge/features/age_estimation/infrastructure/failures/age_estimation_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AgeEstimationRepositoryImpl implements AgeEstimationRepository {
  Dio _dio;

  AgeEstimationRepositoryImpl(this._dio);

  @override
  Future<Either<AgeEstimationFailure, Age>> getAgeByName(Name name) async {
    try {
      if (!name.isValid()) {
        return left(AgeEstimationFailure.invalidInput());
      }

      final result = await _dio.get('https://api.agify.io?name=${name.getOrCrash()}');
      if (result.statusCode == 200) {
        final age = result.data['age'] as int;
        return Right(Age(age));
      } else {
        return Left(AgeEstimationFailure.serverError());
      }
    } catch (e) {
      return Left(AgeEstimationFailure.serverError());
    }
  }
}
