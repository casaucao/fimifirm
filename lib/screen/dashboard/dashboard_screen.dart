import 'package:fimifirm/bloc/dashboard/bloc.dart';
import 'package:fimifirm/repository/repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  DashboardBloc _dashboardBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fimifirm - Get the latest firmware for Fimi X8 SE'),
      ),
      body: Center(
        child: Text('Hi there'),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Repository _repository = RepositoryProvider.of<Repository>(context);
    _dashboardBloc = DashboardBloc(repository: _repository);
    _dashboardBloc.add(StartEvent());
  }
}
