import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class DashboardEvent extends Equatable {
  DashboardEvent([List props = const []]) : super();

  @override
  List<Object> get props => [];
}

class StartEvent extends DashboardEvent {
  @override
  String toString() => 'StartEvent';
}

class RefreshEvent extends DashboardEvent {
  @override
  String toString() => 'RefreshEvent';
}
