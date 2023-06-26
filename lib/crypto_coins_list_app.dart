
import 'package:flutter/material.dart';
import 'package:study_app/router/router.dart';
import 'package:study_app/theme/theme.dart';

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', theme: darkThem, routes: routes);
  }
}
