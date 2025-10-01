import 'package:bling_coding_challenge/core/dependency_injection.dart';
import 'package:bling_coding_challenge/core/error_message_helpers.dart';
import 'package:bling_coding_challenge/features/age_estimation/application/age_estimation_bloc/age_estimation_bloc.dart';
import 'package:bling_coding_challenge/features/age_estimation/infrastructure/failures/age_estimation_failures.dart';
import 'package:bling_coding_challenge/features/age_estimation/presentation/widgets/age_estimation_display.dart';
import 'package:bling_coding_challenge/features/age_estimation/presentation/widgets/age_estimation_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AgeEstimationScreen extends StatelessWidget {
  const AgeEstimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<AgeEstimationBloc>(),
      child: Scaffold(
        body: SafeArea(
          child: Builder(
            builder: (context) {
              return Padding(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: BlocConsumer<AgeEstimationBloc, AgeEstimationState>(
                    listener: (context, state) {
                      state.failureOrSuccess.fold(() {}, (value) {
                        value.fold((failure) {
                          if (failure is ServerError_AgeEstimationFailure) {
                            displayErrorMessage(
                              context,
                              'Server Fehler',
                              'Es ist ein unerwarteter Fehler auf dem Server aufgetreten.',
                            );
                          } else if (failure
                              is InvalidInput_AgeEstimationFailure) {
                            displayErrorMessage(
                              context,
                              'Ungültige Eingabe',
                              'Die Eingabe ist ungültig.',
                            );
                          } else {
                            displayErrorMessage(
                              context,
                              'Unerwateter Fehler',
                              'Es ist ein unerwarteter Fehler aufgetreten.',
                            );
                          }
                        }, (_) {});
                      });
                    },
                    builder: (context, state) {
                      if (state.isLoading == true) {
                        return CircularProgressIndicator();
                      }

                      return state.failureOrSuccess.fold(
                        () {
                          return AgeEstimationForm();
                        },
                        (value) {
                          return value.fold(
                            (_) {
                              return AgeEstimationForm();
                            },
                            (age) {
                              return AgeEstimationDisplay(
                                age: age.getOrCrash(),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
