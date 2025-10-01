import 'package:bling_coding_challenge/core/custom_button.dart';
import 'package:bling_coding_challenge/core/spacing_helpers.dart';
import 'package:bling_coding_challenge/features/age_estimation/application/age_estimation_bloc/age_estimation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AgeEstimationForm extends StatefulWidget {
  const AgeEstimationForm({super.key});

  @override
  State<AgeEstimationForm> createState() => _AgeEstimationFormState();
}

class _AgeEstimationFormState extends State<AgeEstimationForm> {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AgeEstimationBloc, AgeEstimationState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showValueErrors == true
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addVerticalSpace(60),
              Text(
                "Altersvorhersage",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              addVerticalSpace(10),
              Text(
                "Bitte gib deinen Namen im Textfeld ein. Nach erfolgreichem Senden erhältst du das Ergebnis. Anschließend kannst du es erneut probieren. Viel Spaß.",
              ),
              addVerticalSpace(30),
              TextFormField(
                controller: _nameController,
                onChanged: (value) {
                  BlocProvider.of<AgeEstimationBloc>(
                    context,
                  ).add(AgeEstimationEvent.nameChanged(_nameController.text));
                },
                validator: (value) {
                  return state.name.value.fold(
                    (failure) => failure.message,
                    (_) => null,
                  );
                },
                decoration: InputDecoration(
                  label: Text(
                    "Vorname",
                  ),
                ),
              ),
              addVerticalSpace(20),
              CustomButton(
                onPressed: () {
                  BlocProvider.of<AgeEstimationBloc>(
                    context,
                  ).add(AgeEstimationEvent.submitButtonPressed());
                },
                primary: true,
                child: Text(
                  "Senden",
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
