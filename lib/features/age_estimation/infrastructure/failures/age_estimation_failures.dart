import 'package:freezed_annotation/freezed_annotation.dart';

part 'age_estimation_failures.freezed.dart';


@freezed
abstract class AgeEstimationFailure with _$AgeEstimationFailure{
  const factory AgeEstimationFailure.invalidInput() = InvalidInput_AgeEstimationFailure;
  const factory AgeEstimationFailure.serverError() = ServerError_AgeEstimationFailure;
}