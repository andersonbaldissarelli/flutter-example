import 'package:bloc/bloc.dart';
import 'package:book_app/home/bloc/home_page_state.dart';
import 'package:book_app/home/bloc/home_page_event.dart';
import 'package:book_app/repository.dart';
import 'package:flutter/cupertino.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final Repository repository;

  HomePageBloc({@required this.repository});

  @override
  HomePageState get initialState => HomePageStateLoading();

  //map the events that will be received and returned to ui
  @override
  Stream<HomePageState> mapEventToState(HomePageEvent event) async* {
    if (event is HomePageEventSearch) {
      yield HomePageStateLoading();

      var query = event.query;
      var booksResult = await repository.getBooks(query);

      yield booksResult;
    }
  }
}
