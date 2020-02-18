import 'package:equatable/equatable.dart';

class Task extends Equatable {
  String idTask;
  String description;

  Task({this.idTask, this.description});

  @override
  List<Object> get props => [idTask, description];
}
