import 'dart:convert';
import 'package:beflyprojeto/components/models/bet.dart';
import 'package:beflyprojeto/components/models/last_match.dart';
import 'package:beflyprojeto/components/models/match.dart';
import 'package:http/http.dart' as http;

import '../models/odd.dart';

class MatchAPI {

  Future<List<MatchModel>> get() async {
    List<MatchModel> list = [];
    await http.get(Uri.parse("https://6569cc7dde53105b0dd7af5c.mockapi.io/matches"))
        .then((reponse) {
      List _json = jsonDecode(reponse.body);
      _json.forEach((item) {
        list.add(MatchModel.fromJson(item));
      });
    });
    return list;
  }
  Future<List<MatchModel>> getMatch(id) async {
    List<MatchModel> listSports = [];
    await http.get(Uri.parse("https://6569cc7dde53105b0dd7af5c.mockapi.io/matches/$id"))
        .then((reponse) {
      List _json = jsonDecode(reponse.body);
      _json.forEach((item) {
        listSports.add(MatchModel.fromJson(item));
      });
    });
    return listSports;
  }

  Future<List<Bet>> getBets(id) async {
    List<Bet> listSports = [];
    await http.get(Uri.parse(" https://6569cc7dde53105b0dd7af5c.mockapi.io/matches/$id/bets"))
        .then((reponse) {
      List _json = jsonDecode(reponse.body);
      _json.forEach((item) {
        listSports.add(Bet.fromJson(item));
      });
    });
    return listSports;
  }
  Future<List<Odd>> getOdds(id) async {
    List<Odd> listSports = [];
    await http.get(Uri.parse(" https://6569cc7dde53105b0dd7af5c.mockapi.io/matches/$id/odds"))
        .then((reponse) {
      List _json = jsonDecode(reponse.body);
      _json.forEach((item) {
        listSports.add(Odd.fromJson(item));
      });
    });
    return listSports;
  }
  Future<List<LastMatch>> getLastMatchs(id) async {
    List<LastMatch> listSports = [];
    await http.get(Uri.parse("https://6569cc7dde53105b0dd7af5c.mockapi.io/matches/$id/last_matches"))
        .then((reponse) {
      List _json = jsonDecode(reponse.body);
      _json.forEach((item) {
        listSports.add(LastMatch.fromJson(item));
      });
    });
    return listSports;
  }

}