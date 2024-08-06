import 'dart:convert';
import 'package:beflyprojeto/components/models/tip.dart';
import 'package:http/http.dart' as http;

class TipsAPI {

  Future<List<Tip>> get() async {
    List<Tip> list = [];
    await http.get(Uri.parse("https://6569cc7dde53105b0dd7af5c.mockapi.io/tips"))
        .then((reponse) {
      List _json = jsonDecode(reponse.body);
      _json.forEach((item) {
        list.add(Tip.fromJson(item));
      });
    });
    return list;
  }

}