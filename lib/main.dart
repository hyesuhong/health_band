import 'package:flutter/material.dart';
import 'package:health_band/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  String get _initialRoute => AppRoutes.home;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Band',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: _initialRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
