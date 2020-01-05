import 'package:book_app/models/book_api.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class HomePageState extends Equatable {
  HomePageState([List tmp = const []]) : super(tmp);
}

class HomePageStateLoading extends HomePageState {
  @override
  String toString() => "HomePageStateLoading";
}

class HomePageStateLoadSucess extends HomePageState {
  final List<Book> books;
  HomePageStateLoadSucess({@required this.books});

  @override
  String toString() => "HomePageStateLoadSucess";
}

class HomePageStateError extends HomePageState {
  final String message;

  HomePageStateError({@required this.message});

  @override
  String toString() => "HomePageStateError";
}
