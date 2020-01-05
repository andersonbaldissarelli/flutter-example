import 'package:book_app/home/bloc/home_page_state.dart';
import 'package:book_app/models/book_api.dart';

import 'package:http/http.dart' as http;

import 'dart:convert' as converter;

class Repository {
  //getBooks return state initial page

  final String baseUrl = "https://www.googleapis.com/books/v1/volumes";

  Future<HomePageState> getBooks(String query) async {
    final url = "$baseUrl?q=$query";
    var response = await http.get(url);

    //check api conection
    if (response.statusCode == 200) {
      var body = response.body;
      var json = converter.jsonDecode(body);
      var data = BooksApiModel.fromJson(json);

      var books = data.items;

      return HomePageStateSucess(books: books);
    } else {
      return HomePageStateError(message: "Internet Error!");
    }
  }
}
