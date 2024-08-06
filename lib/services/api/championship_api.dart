import 'dart:convert';
import 'package:beflyprojeto/components/models/championship.dart';
import 'package:http/http.dart' as http;

class ChampionshipAPI {

  Future<List<Championship>> get() async {
    List<Championship> list = [];
    await http.get(Uri.parse("https://6569cc7dde53105b0dd7af5c.mockapi.io/championships"))
        .then((reponse) {
      List _json = jsonDecode(reponse.body);
      _json.forEach((item) {
        list.add(Championship.fromJson(item));
      });
    });
    return list;
  }

}