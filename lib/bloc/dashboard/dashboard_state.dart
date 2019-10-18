import 'package:equatable/equatable.dart';
import 'package:fimifirm/model/firmware.dart';
import 'package:meta/meta.dart';

@immutable
abstract class DashboardState extends Equatable {
  final List mProps;

  DashboardState([List props = const []])
      : mProps = props,
        super();

  @override
  List<Object> get props => mProps;
}

class InitialDashboardState extends DashboardState {
  @override
  String toString() => 'InitialDashboardState';
}

class LoadingState extends DashboardState {
  @override
  String toString() => 'LoadingState';
}

class LatestFirmwaresState extends DashboardState {
  final List<Firmware> firmwares;

  LatestFirmwaresState({@required this.firmwares}) : super([firmwares]);

  @override
  String toString() => 'LatestFirmwaresState';
}
