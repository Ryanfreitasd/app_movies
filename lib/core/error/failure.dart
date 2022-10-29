import 'package:equatable/equatable.dart';

/// Uma classe abstrata que será usada como classe pai nos endpoints, e
/// que será substituída por seus filhos

abstract class Failure extends Equatable {
  const Failure([List properties = const <dynamic>[]]) : super();
}
