// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'age_estimation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AgeEstimationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgeEstimationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AgeEstimationEvent()';
}


}

/// @nodoc
class $AgeEstimationEventCopyWith<$Res>  {
$AgeEstimationEventCopyWith(AgeEstimationEvent _, $Res Function(AgeEstimationEvent) __);
}


/// Adds pattern-matching-related methods to [AgeEstimationEvent].
extension AgeEstimationEventPatterns on AgeEstimationEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NameChanged_AgeEstimationEvent value)?  nameChanged,TResult Function( SubmitForm_AgeEstimationEvent value)?  submitButtonPressed,TResult Function( Reset_AgeEstimationEvent value)?  resetButtonPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NameChanged_AgeEstimationEvent() when nameChanged != null:
return nameChanged(_that);case SubmitForm_AgeEstimationEvent() when submitButtonPressed != null:
return submitButtonPressed(_that);case Reset_AgeEstimationEvent() when resetButtonPressed != null:
return resetButtonPressed(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NameChanged_AgeEstimationEvent value)  nameChanged,required TResult Function( SubmitForm_AgeEstimationEvent value)  submitButtonPressed,required TResult Function( Reset_AgeEstimationEvent value)  resetButtonPressed,}){
final _that = this;
switch (_that) {
case NameChanged_AgeEstimationEvent():
return nameChanged(_that);case SubmitForm_AgeEstimationEvent():
return submitButtonPressed(_that);case Reset_AgeEstimationEvent():
return resetButtonPressed(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NameChanged_AgeEstimationEvent value)?  nameChanged,TResult? Function( SubmitForm_AgeEstimationEvent value)?  submitButtonPressed,TResult? Function( Reset_AgeEstimationEvent value)?  resetButtonPressed,}){
final _that = this;
switch (_that) {
case NameChanged_AgeEstimationEvent() when nameChanged != null:
return nameChanged(_that);case SubmitForm_AgeEstimationEvent() when submitButtonPressed != null:
return submitButtonPressed(_that);case Reset_AgeEstimationEvent() when resetButtonPressed != null:
return resetButtonPressed(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name)?  nameChanged,TResult Function()?  submitButtonPressed,TResult Function()?  resetButtonPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NameChanged_AgeEstimationEvent() when nameChanged != null:
return nameChanged(_that.name);case SubmitForm_AgeEstimationEvent() when submitButtonPressed != null:
return submitButtonPressed();case Reset_AgeEstimationEvent() when resetButtonPressed != null:
return resetButtonPressed();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name)  nameChanged,required TResult Function()  submitButtonPressed,required TResult Function()  resetButtonPressed,}) {final _that = this;
switch (_that) {
case NameChanged_AgeEstimationEvent():
return nameChanged(_that.name);case SubmitForm_AgeEstimationEvent():
return submitButtonPressed();case Reset_AgeEstimationEvent():
return resetButtonPressed();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name)?  nameChanged,TResult? Function()?  submitButtonPressed,TResult? Function()?  resetButtonPressed,}) {final _that = this;
switch (_that) {
case NameChanged_AgeEstimationEvent() when nameChanged != null:
return nameChanged(_that.name);case SubmitForm_AgeEstimationEvent() when submitButtonPressed != null:
return submitButtonPressed();case Reset_AgeEstimationEvent() when resetButtonPressed != null:
return resetButtonPressed();case _:
  return null;

}
}

}

/// @nodoc


class NameChanged_AgeEstimationEvent implements AgeEstimationEvent {
  const NameChanged_AgeEstimationEvent(this.name);
  

 final  String name;

/// Create a copy of AgeEstimationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameChanged_AgeEstimationEventCopyWith<NameChanged_AgeEstimationEvent> get copyWith => _$NameChanged_AgeEstimationEventCopyWithImpl<NameChanged_AgeEstimationEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NameChanged_AgeEstimationEvent&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'AgeEstimationEvent.nameChanged(name: $name)';
}


}

/// @nodoc
abstract mixin class $NameChanged_AgeEstimationEventCopyWith<$Res> implements $AgeEstimationEventCopyWith<$Res> {
  factory $NameChanged_AgeEstimationEventCopyWith(NameChanged_AgeEstimationEvent value, $Res Function(NameChanged_AgeEstimationEvent) _then) = _$NameChanged_AgeEstimationEventCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$NameChanged_AgeEstimationEventCopyWithImpl<$Res>
    implements $NameChanged_AgeEstimationEventCopyWith<$Res> {
  _$NameChanged_AgeEstimationEventCopyWithImpl(this._self, this._then);

  final NameChanged_AgeEstimationEvent _self;
  final $Res Function(NameChanged_AgeEstimationEvent) _then;

/// Create a copy of AgeEstimationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(NameChanged_AgeEstimationEvent(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SubmitForm_AgeEstimationEvent implements AgeEstimationEvent {
  const SubmitForm_AgeEstimationEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitForm_AgeEstimationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AgeEstimationEvent.submitButtonPressed()';
}


}




/// @nodoc


class Reset_AgeEstimationEvent implements AgeEstimationEvent {
  const Reset_AgeEstimationEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Reset_AgeEstimationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AgeEstimationEvent.resetButtonPressed()';
}


}




/// @nodoc
mixin _$AgeEstimationState {

 bool get isLoading; bool get showValueErrors; Name get name; Option<Either<AgeEstimationFailure, Age>> get failureOrSuccess;
/// Create a copy of AgeEstimationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgeEstimationStateCopyWith<AgeEstimationState> get copyWith => _$AgeEstimationStateCopyWithImpl<AgeEstimationState>(this as AgeEstimationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgeEstimationState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.showValueErrors, showValueErrors) || other.showValueErrors == showValueErrors)&&(identical(other.name, name) || other.name == name)&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,showValueErrors,name,failureOrSuccess);

@override
String toString() {
  return 'AgeEstimationState(isLoading: $isLoading, showValueErrors: $showValueErrors, name: $name, failureOrSuccess: $failureOrSuccess)';
}


}

/// @nodoc
abstract mixin class $AgeEstimationStateCopyWith<$Res>  {
  factory $AgeEstimationStateCopyWith(AgeEstimationState value, $Res Function(AgeEstimationState) _then) = _$AgeEstimationStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool showValueErrors, Name name, Option<Either<AgeEstimationFailure, Age>> failureOrSuccess
});




}
/// @nodoc
class _$AgeEstimationStateCopyWithImpl<$Res>
    implements $AgeEstimationStateCopyWith<$Res> {
  _$AgeEstimationStateCopyWithImpl(this._self, this._then);

  final AgeEstimationState _self;
  final $Res Function(AgeEstimationState) _then;

/// Create a copy of AgeEstimationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? showValueErrors = null,Object? name = null,Object? failureOrSuccess = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,showValueErrors: null == showValueErrors ? _self.showValueErrors : showValueErrors // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name,failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<AgeEstimationFailure, Age>>,
  ));
}

}


/// Adds pattern-matching-related methods to [AgeEstimationState].
extension AgeEstimationStatePatterns on AgeEstimationState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AgeEstimationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AgeEstimationState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AgeEstimationState value)  $default,){
final _that = this;
switch (_that) {
case _AgeEstimationState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AgeEstimationState value)?  $default,){
final _that = this;
switch (_that) {
case _AgeEstimationState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool showValueErrors,  Name name,  Option<Either<AgeEstimationFailure, Age>> failureOrSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AgeEstimationState() when $default != null:
return $default(_that.isLoading,_that.showValueErrors,_that.name,_that.failureOrSuccess);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool showValueErrors,  Name name,  Option<Either<AgeEstimationFailure, Age>> failureOrSuccess)  $default,) {final _that = this;
switch (_that) {
case _AgeEstimationState():
return $default(_that.isLoading,_that.showValueErrors,_that.name,_that.failureOrSuccess);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool showValueErrors,  Name name,  Option<Either<AgeEstimationFailure, Age>> failureOrSuccess)?  $default,) {final _that = this;
switch (_that) {
case _AgeEstimationState() when $default != null:
return $default(_that.isLoading,_that.showValueErrors,_that.name,_that.failureOrSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _AgeEstimationState implements AgeEstimationState {
  const _AgeEstimationState({required this.isLoading, required this.showValueErrors, required this.name, required this.failureOrSuccess});
  

@override final  bool isLoading;
@override final  bool showValueErrors;
@override final  Name name;
@override final  Option<Either<AgeEstimationFailure, Age>> failureOrSuccess;

/// Create a copy of AgeEstimationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgeEstimationStateCopyWith<_AgeEstimationState> get copyWith => __$AgeEstimationStateCopyWithImpl<_AgeEstimationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgeEstimationState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.showValueErrors, showValueErrors) || other.showValueErrors == showValueErrors)&&(identical(other.name, name) || other.name == name)&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,showValueErrors,name,failureOrSuccess);

@override
String toString() {
  return 'AgeEstimationState(isLoading: $isLoading, showValueErrors: $showValueErrors, name: $name, failureOrSuccess: $failureOrSuccess)';
}


}

/// @nodoc
abstract mixin class _$AgeEstimationStateCopyWith<$Res> implements $AgeEstimationStateCopyWith<$Res> {
  factory _$AgeEstimationStateCopyWith(_AgeEstimationState value, $Res Function(_AgeEstimationState) _then) = __$AgeEstimationStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool showValueErrors, Name name, Option<Either<AgeEstimationFailure, Age>> failureOrSuccess
});




}
/// @nodoc
class __$AgeEstimationStateCopyWithImpl<$Res>
    implements _$AgeEstimationStateCopyWith<$Res> {
  __$AgeEstimationStateCopyWithImpl(this._self, this._then);

  final _AgeEstimationState _self;
  final $Res Function(_AgeEstimationState) _then;

/// Create a copy of AgeEstimationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? showValueErrors = null,Object? name = null,Object? failureOrSuccess = null,}) {
  return _then(_AgeEstimationState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,showValueErrors: null == showValueErrors ? _self.showValueErrors : showValueErrors // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name,failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<AgeEstimationFailure, Age>>,
  ));
}


}

// dart format on
