import 'package:equatable/equatable.dart';

abstract class DashboardState extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialDashboardState extends DashboardState {
  @override
  String toString() => 'InitialDashboardState';
}

class LoadingState extends DashboardState {
  @override
  String toString() => 'LoadingState';
}
