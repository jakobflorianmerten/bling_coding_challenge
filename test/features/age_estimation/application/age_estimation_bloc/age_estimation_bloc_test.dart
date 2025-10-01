import 'package:bling_coding_challenge/features/age_estimation/application/age_estimation_bloc/age_estimation_bloc.dart';
import 'package:bling_coding_challenge/features/age_estimation/domain/repositories/age_estimation_repository.dart';
import 'package:bling_coding_challenge/features/age_estimation/domain/value_objects/age.dart';
import 'package:bling_coding_challenge/features/age_estimation/domain/value_objects/name.dart';
import 'package:bling_coding_challenge/features/age_estimation/infrastructure/failures/age_estimation_failures.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAgeEstimationRepository extends Mock
    implements AgeEstimationRepository {}

void main() {
  group('AgeEstimationBloc', () {
    late AgeEstimationRepository mockRepository;
    late AgeEstimationBloc ageEstimationBloc;

    setUpAll(() {
      registerFallbackValue(Name('Max'));
      registerFallbackValue(Age(25));
    });

    setUp(() {
      mockRepository = MockAgeEstimationRepository();
      ageEstimationBloc = AgeEstimationBloc(mockRepository);
    });

    blocTest<AgeEstimationBloc, AgeEstimationState>(
      'testet die NameChanged Methode',
      build: () => ageEstimationBloc,
      act: (bloc) => bloc.add(const AgeEstimationEvent.nameChanged('Max')),
      expect: () => [
        predicate<AgeEstimationState>(
          (state) =>
              state.name.getOrCrash() == 'Max' &&
              state.isLoading == false &&
              state.failureOrSuccess == none(),
        ),
      ],
    );

    group('SubmitForm', () {
      blocTest<AgeEstimationBloc, AgeEstimationState>(
        'Emitted das Alter, wenn Repository ein Alter zurückgibt',
        build: () => ageEstimationBloc,
        setUp: () {
          when(
            () => mockRepository.getAgeByName(any()),
          ).thenAnswer((_) async => right(Age(25)));
        },
        seed: () => AgeEstimationState.initial().copyWith(name: Name('Max')),
        act: (bloc) => bloc.add(const AgeEstimationEvent.submitButtonPressed()),
        expect: () => [
          predicate<AgeEstimationState>(
            (state) =>
                state.name.getOrCrash() == 'Max' &&
                state.isLoading == true &&
                state.failureOrSuccess == none(),
          ),
          predicate<AgeEstimationState>(
            (state) =>
                state.name.getOrCrash() == 'Max' &&
                state.isLoading == false &&
                state.failureOrSuccess.isSome() &&
                state.failureOrSuccess.fold(
                  () => false,
                  (either) => either.isRight(),
                ),
          ),
        ],
        verify: (_) {
          verify(() => mockRepository.getAgeByName(any())).called(1);
        },
      );

      blocTest<AgeEstimationBloc, AgeEstimationState>(
        'Emitted Fehler wenn das Repository einen Fehler zurückgibt',
        build: () => ageEstimationBloc,
        setUp: () {
          when(() => mockRepository.getAgeByName(any())).thenAnswer(
            (_) async => left(const AgeEstimationFailure.serverError()),
          );
        },
        seed: () => AgeEstimationState.initial().copyWith(name: Name('Max')),
        act: (bloc) => bloc.add(const AgeEstimationEvent.submitButtonPressed()),
        expect: () => [
          predicate<AgeEstimationState>(
            (state) =>
                state.name.getOrCrash() == 'Max' &&
                state.isLoading == true &&
                state.failureOrSuccess == none(),
          ),
          predicate<AgeEstimationState>(
            (state) =>
                state.name.getOrCrash() == 'Max' &&
                state.isLoading == false &&
                state.failureOrSuccess.isSome() &&
                state.failureOrSuccess.fold(
                  () => false,
                  (either) => either.isLeft(),
                ),
          ),
        ],
        verify: (_) {
          verify(() => mockRepository.getAgeByName(any())).called(1);
        },
      );

      blocTest<AgeEstimationBloc, AgeEstimationState>(
        'Zeigt einen Fehler, wenn Name in eine invaliden Zustand ist',
        build: () => ageEstimationBloc,
        seed: () => AgeEstimationState.initial().copyWith(name: Name('')),
        act: (bloc) => bloc.add(const AgeEstimationEvent.submitButtonPressed()),
        expect: () => [
          predicate<AgeEstimationState>(
            (state) =>
                state.isLoading == true && state.failureOrSuccess == none(),
          ),
          predicate<AgeEstimationState>(
            (state) =>
                state.isLoading == false && state.showValueErrors == true,
          ),
        ],
        verify: (_) {
          verifyNever(() => mockRepository.getAgeByName(any()));
        },
      );
    });

    blocTest<AgeEstimationBloc, AgeEstimationState>(
      'Setzt den State zurück',
      build: () => ageEstimationBloc,
      seed: () => AgeEstimationState(
        name: Name('Max'),
        isLoading: true,
        showValueErrors: true,
        failureOrSuccess: some(right(Age(25))),
      ),
      act: (bloc) => bloc.add(const AgeEstimationEvent.resetButtonPressed()),
      expect: () => [
        predicate<AgeEstimationState>(
          (state) =>
              state.name.value.fold((f) => f.failedValue, (r) => r) == '' &&
              state.isLoading == false &&
              state.showValueErrors == false &&
              state.failureOrSuccess == none(),
        ),
      ],
    );
  });
}
