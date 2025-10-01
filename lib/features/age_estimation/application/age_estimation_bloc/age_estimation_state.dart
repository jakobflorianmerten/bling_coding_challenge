part of 'age_estimation_bloc.dart';

@freezed
abstract class AgeEstimationState with _$AgeEstimationState {
  const factory AgeEstimationState({
    required bool isLoading,
    required bool showValueErrors,
    required Name name, 
    required Option<Either<AgeEstimationFailure, Age>> failureOrSuccess
  }) = _AgeEstimationState;

  factory AgeEstimationState.initial() => AgeEstimationState(
    isLoading: false, 
    showValueErrors: false,
    name: Name(''),
    failureOrSuccess: none()
  );
}
