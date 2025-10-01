import 'package:bling_coding_challenge/features/age_estimation/domain/repositories/age_estimation_repository.dart';
import 'package:bling_coding_challenge/features/age_estimation/domain/value_objects/age.dart';
import 'package:bling_coding_challenge/features/age_estimation/domain/value_objects/name.dart';
import 'package:bling_coding_challenge/features/age_estimation/infrastructure/failures/age_estimation_failures.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'age_estimation_event.dart';
part 'age_estimation_state.dart';

part 'age_estimation_bloc.freezed.dart';

class AgeEstimationBloc extends Bloc<AgeEstimationEvent, AgeEstimationState> {
  final AgeEstimationRepository _repo;
  AgeEstimationBloc(this._repo) : super(AgeEstimationState.initial()) {
    on<NameChanged_AgeEstimationEvent>((event, emit) {
      emit(
        state.copyWith(
          name: Name(event.name),
          failureOrSuccess: none(),
          isLoading: false,
        ),
      );
    });
    on<SubmitForm_AgeEstimationEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true, failureOrSuccess: none()));
      // check if the name is valid
      if (!state.name.isValid()) {
        emit(
          state.copyWith(
            isLoading: false,
            showValueErrors: true
          ),
        );
        return;
      }
      final result = await _repo.getAgeByName(state.name);
      emit(state.copyWith(failureOrSuccess: some(result), isLoading: false));
    });
    on<Reset_AgeEstimationEvent>((event, emit) {
      emit(AgeEstimationState.initial());
    });
  }
}
