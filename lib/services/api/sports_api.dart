import 'dart:convert';

import 'package:beflyprojeto/components/models/sport.dart';
import 'package:http/http.dart' as http;

class SportsAPI {

  Future<List<Sport>> get() async {
    List<Sport> list = [];
    await http.get(Uri.parse("https://6569cc7dde53105b0dd7af5c.mockapi.io/sports"))
        .then((reponse) {
      List _json = jsonDecode(reponse.body);
      _json.forEach((item) {
        list.add(Sport.fromJson(item));
      });
    });
    return list;
  }
}