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
    if (event is StartEvent) {
      yield* _mapStartEventToState();
    }
  }

  Stream<DashboardState> _mapStartEventToState() async* {
    try {
      yield LoadingState();
      yield LatestFirmwaresState(
          firmwares: await _repository.getLatestFirmwares());
    } catch (exception) {
      print(exception.toString());
      // TODO handle exception
    }
  }
}
