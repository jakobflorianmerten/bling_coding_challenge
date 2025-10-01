import 'package:bling_coding_challenge/core/custom_button.dart';
import 'package:bling_coding_challenge/core/spacing_helpers.dart';
import 'package:bling_coding_challenge/features/age_estimation/application/age_estimation_bloc/age_estimation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AgeEstimationDisplay extends StatelessWidget {
  final int age;
  const AgeEstimationDisplay({super.key, required this.age});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          age.toString(),
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        addVerticalSpace(40),
        CustomButton(
          onPressed: () {
            BlocProvider.of<AgeEstimationBloc>(
              context,
            ).add(AgeEstimationEvent.resetButtonPressed());
          },
          child: Text(
            "Reset",
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
      ],
    );
  }
}
