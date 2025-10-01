

import 'package:flutter/material.dart';

@immutable
class ValueFailure<T> {
  final String _message;
  final T failedValue;
  const ValueFailure(this._message, this.failedValue);

  String get message => _message;
}