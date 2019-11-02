import 'dart:async';

import 'package:dio/dio.dart';

class MyHomePageBloc {
  final StreamController<String> _streamController = StreamController();
  Sink<String> get input => _streamController.sink;
  Stream get output =>
      _streamController.stream.asyncMap((cep) => _searchCep(cep));

  String url(String cep) => "https://viacep.com.br/ws/$cep/json/";

  _searchCep(String cep) async {
    Response response = await Dio().get(url(cep));
    return response.data;
  }
}
