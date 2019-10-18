import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fimifirm/repository/repository.dart';
import 'package:meta/meta.dart';

import './bloc.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final Repository _repository;

  DashboardBloc({@required Repository repository})
      : assert(repository != null),
        _repository = repository;

  @override
  DashboardState get initialState => InitialDashboardState();

  @override
  Stream<DashboardState> mapEventToState(
    DashboardEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
