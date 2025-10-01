


import 'package:bling_coding_challenge/features/age_estimation/domain/value_objects/value_failure.dart';
import 'package:bling_coding_challenge/features/age_estimation/domain/value_objects/value_object.dart';
import 'package:dartz/dartz.dart';

class Age extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory Age(int input) {
    return Age._(_validateAge(input));
  }
  const Age._(this.value);
}


Either<ValueFailure<int>, int> _validateAge(int input) {
  // ÜBERPRÜFT DEN NAMEN AUF LÄNGE
  if (input >= 1 && input <= 150) {
    return right(input);
  } else {
    return left(ValueFailure<int>("Das Alter ist nicht valide", input));
  }
}