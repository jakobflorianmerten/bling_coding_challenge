import 'package:flutter/widgets.dart';
import 'package:toastification/toastification.dart';

void displayErrorMessage(
  BuildContext context,
  String errorTitle,
  String errorMessage,
) {
  toastification.show(
    type: ToastificationType.error,
    context: context,
    style: ToastificationStyle.flat,
    title: Text(errorTitle),
    description: Text(errorMessage),
    autoCloseDuration: const Duration(seconds: 5),
  );
}
