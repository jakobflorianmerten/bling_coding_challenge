

import 'package:bling_coding_challenge/features/age_estimation/domain/value_objects/value_failure.dart';
import 'package:bling_coding_challenge/features/age_estimation/domain/value_objects/value_object.dart';
import 'package:dartz/dartz.dart';

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String input) {
    return Name._(_validateName(input));
  }
  const Name._(this.value);
}


Either<ValueFailure<String>, String> _validateName(String input) {
  // ÜBERPRÜFT DEN NAMEN AUF LÄNGE
  if (input.length >= 2 && input.length <= 30) {
    return right(input);
  } else {
    return left(ValueFailure<String>("Der Name hat keine valide Länge", input));
  }
}