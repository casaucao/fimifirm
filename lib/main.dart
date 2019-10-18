import 'package:fimifirm/repository/repository.dart';
import 'package:fimifirm/screen/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Repository _repository = Repository();

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      builder: (context) => _repository,
      child: MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en'),
        ],
        home: DashboardScreen(),
      ),
    );
  }
}
