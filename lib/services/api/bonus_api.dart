import 'dart:convert';
import 'package:beflyprojeto/components/models/bonus.dart';
import 'package:http/http.dart' as http;

class BonusAPI {

  Future<List<Bonus>> get() async {
    List<Bonus> list = [];
    await http.get(Uri.parse("https://6569cc7dde53105b0dd7af5c.mockapi.io/bonus"))
        .then((reponse) {
      List _json = jsonDecode(reponse.body);
      _json.forEach((item) {
        list.add(Bonus.fromJson(item));
      });
    });
    return list;
  }

}