import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class Firmware extends Equatable {
  final int model;


  Firmware({@required int model}) : this.model = model;

  @override
  List<Object> get props => [model];
}
