import 'dart:convert';

import 'package:beflyprojeto/components/models/won_bet.dart';
import 'package:http/http.dart' as http;

class BetsAPI {

  Future<List<WonBet>> get() async {
    List<WonBet> list = [];
    await http.get(Uri.parse("https://6569cc7dde53105b0dd7af5c.mockapi.io/won_bets"))
        .then((reponse) {
      List _json = jsonDecode(reponse.body);
      _json.forEach((item) {
        list.add(WonBet.fromJson(item));
      });
    });
    return list;
  }

}