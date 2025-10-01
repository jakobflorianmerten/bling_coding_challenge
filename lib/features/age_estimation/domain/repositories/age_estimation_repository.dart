

import 'package:bling_coding_challenge/features/age_estimation/domain/value_objects/age.dart';
import 'package:bling_coding_challenge/features/age_estimation/domain/value_objects/name.dart';
import 'package:bling_coding_challenge/features/age_estimation/infrastructure/failures/age_estimation_failures.dart';
import 'package:dartz/dartz.dart';

abstract class AgeEstimationRepository {

  Future<Either<AgeEstimationFailure, Age>> getAgeByName(Name name);

}