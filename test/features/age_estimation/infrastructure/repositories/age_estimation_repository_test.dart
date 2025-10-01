import 'package:bling_coding_challenge/features/age_estimation/domain/value_objects/name.dart';
import 'package:bling_coding_challenge/features/age_estimation/infrastructure/failures/age_estimation_failures.dart';
import 'package:bling_coding_challenge/features/age_estimation/infrastructure/repositories/age_estimation_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  group('AgeEstimationRepositoryImpl', () {
    late AgeEstimationRepositoryImpl repository;
    late MockDio mockDio;

    setUp(() {
      mockDio = MockDio();
      repository = AgeEstimationRepositoryImpl(mockDio);
    });

    group('getAgeByName', () {
      test(
        'Bei invalidem State von Name sollte ein Fehler zurückgegeben werden',
        () async {
          final invalidName = Name('a');

          final result = await repository.getAgeByName(invalidName);

          // assert
          expect(result.isLeft(), true);
          result.fold(
            (failure) => expect(failure, const AgeEstimationFailure.invalidInput()),
            (_) => fail('Expected failure but got success'),
          );
          verifyZeroInteractions(mockDio);
        },
      );

      test(
        'Sollte das Alter zurückgeben, wenn der API-Call erfolgreich war.',
        () async {
          // arrange
          final validName = Name('Max');
          final mockResponse = Response(
            data: {'age': 25, 'name': 'Max'},
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          );

          when(() => mockDio.get(any())).thenAnswer((_) async => mockResponse);

          // act
          final result = await repository.getAgeByName(validName);

          // assert
          expect(result.isRight(), true);
          result.fold(
            (_) => fail('Expected success but got failure'),
            (age) => expect(age.getOrCrash(), 25),
          );
          verify(() => mockDio.get('https://api.agify.io?name=Max')).called(1);
        },
      );

      test(
        'Sollte Fehler zurückgeben, wenn der Status Code nicht 200 ist.',
        () async {
          // arrange
          final validName = Name('Max');
          final mockResponse = Response(
            data: {'error': 'Not found'},
            statusCode: 404,
            requestOptions: RequestOptions(path: ''),
          );

          when(() => mockDio.get(any())).thenAnswer((_) async => mockResponse);

          // act
          final result = await repository.getAgeByName(validName);

          // assert
          expect(result.isLeft(), true);
          result.fold(
            (failure) => expect(failure, const AgeEstimationFailure.serverError()),
            (_) => fail('Expected failure but got success'),
          );
          verify(() => mockDio.get('https://api.agify.io?name=Max')).called(1);
        },
      );

    });
  });
}