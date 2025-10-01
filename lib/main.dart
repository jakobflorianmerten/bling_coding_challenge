import 'package:bling_coding_challenge/core/dependency_injection.dart';
import 'package:bling_coding_challenge/core/theming.dart';
import 'package:bling_coding_challenge/features/age_estimation/presentation/screens/age_estimation_screen.dart';
import 'package:flutter/material.dart';

void main() {
  setupDependencyInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme, 
      home: const AgeEstimationScreen()
    );
  }
}
