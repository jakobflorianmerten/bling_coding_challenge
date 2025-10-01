part of 'age_estimation_bloc.dart';

@freezed
abstract class AgeEstimationEvent with _$AgeEstimationEvent {
  const factory AgeEstimationEvent.nameChanged(String name) =
      NameChanged_AgeEstimationEvent;
  const factory AgeEstimationEvent.submitButtonPressed() = SubmitForm_AgeEstimationEvent;
  const factory AgeEstimationEvent.resetButtonPressed() = Reset_AgeEstimationEvent;
}
